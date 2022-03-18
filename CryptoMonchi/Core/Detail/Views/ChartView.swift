//
//  ChartView.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 18/3/2022.
//

import SwiftUI

struct ChartView: View {
    
    private let data: [Double]
    private let maxY: Double
    private let minY: Double
    private let lineColor: Color
    private let startingDate: Date
    private let endingDate: Date
    @State private var percentage: CGFloat = 0 //new
    
    init(coin: CoinModel) {
        data = coin.sparklineIn7D?.price ?? []
        maxY = data.max() ?? 0
        minY = data.min() ?? 0
        
        let priceChange = (data.last ?? 0) - (data.first ?? 0)
        lineColor = priceChange > 0 ? Color.theme.green : Color.theme.red
        
        endingDate = Date(coinGeckoString: coin.lastUpdated ?? "")
        startingDate = endingDate.addingTimeInterval(-7*24*60*60)//-7 = back 7days
    }
    
    // 300
    // 100
    // 3
    // 1 * 3 = 3
    // 2 * 3 = 6
    // 3 * 3 = 9
    // 100 * 3 = 300
    
    // 60,000 - max
    // 50,000 - min
    // 60,000 - 50,000 = 10,000 - yAxis
    // 52,000 - data point
    // 52,000 - 50,000 = 2,000 /10,000 = 20%
    
    var body: some View {
        VStack {
            chartView
                .frame(height: 200)
                .background(chartBackground)
                .overlay( chartYAxis.padding(.horizontal, 4), alignment: .leading
                )//add padding
               chartDateLabels//new
                .padding(.horizontal, 4)//new
        }
        .font(.caption)
        .foregroundColor(Color.theme.secondaryText)
        .onAppear {// glaff animation
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {//start time
                withAnimation(.linear(duration: 2.0)) {//show up time till 2sec
                    percentage = 1.0
                    
                }
            }
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(coin: dev.coin)
           // .frame(width: 200)//size of blue line 
    }
}

extension ChartView {
    
    private var chartView: some View {
        GeometryReader { geometry in
          Path { path in
            for index in data.indices {
                
                let xPosition = geometry.size.width / CGFloat(data.count) * CGFloat(index + 1)
                
                let yAxis = maxY - minY
                
                let yPosition = (1 - CGFloat((data[index] - minY) / yAxis)) * geometry.size.height
                
                if index == 0 {
                    path.move(to: CGPoint(x: xPosition, y: yPosition))
                }
                path.addLine(to: CGPoint(x: xPosition, y: yPosition))
            }
        }
        .trim(from: 0, to: percentage)//to -> chart length //new
        .stroke(lineColor, style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))//chart 縦幅length
        .shadow(color: lineColor, radius: 10, x: 0.0, y: 10)
        .shadow(color: lineColor.opacity(0.5), radius: 10, x: 0.0, y: 20)
        .shadow(color: lineColor.opacity(0.2), radius: 10, x: 0.0, y: 30)
        .shadow(color: lineColor.opacity(0.1), radius: 10, x: 0.0, y: 40)
    }
  }
    
    private var chartBackground: some View {
        VStack {
            Divider()
            Spacer()
            Divider()
            Spacer()
            Divider()
        }
    }
    
    private var chartYAxis: some View {
        VStack {
            Text(maxY.formattedWithAbbreviations())
            Spacer()
            Text(((maxY + minY) / 2).formattedWithAbbreviations())
            Spacer()
            Text(minY.formattedWithAbbreviations())
        }
    }
    
    private var chartDateLabels: some View {//new
        HStack {
            Text(startingDate.asShortDateString())
            Spacer()
            Text(endingDate.asShortDateString())
        }
    }
}
