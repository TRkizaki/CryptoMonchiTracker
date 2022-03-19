//
//  DetailView.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 17/3/2022.
//

import SwiftUI

struct DetailLoadingView: View {//new
    
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack {//new
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
}

struct DetailView: View {
    
    @StateObject private var vm: DetailViewModel
    @State private var showFullDescription: Bool = false//new
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    private let spacing: CGFloat = 30
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
    }

    var body: some View {
        ScrollView {
            VStack {
                ChartView(coin: vm.coin)//update
                    .padding(.vertical)
            
            VStack(spacing: 20) {
                overviewTitle
                Divider()
                descriptionSection//new
                overviewGrid
                additionalTitle
                Divider()
                additionalGrid
                websiteSection //new
            }
            .padding()
          }
        }
        .background(//new 
            Color.theme.background
                .ignoresSafeArea()
            )
        .navigationTitle(vm.coin.name)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                navigationBarTrailingItems
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        DetailView(coin: dev.coin)
    }
  }
}

extension DetailView {
    
    private var navigationBarTrailingItems: some View {//new
        HStack {
        Text(vm.coin.symbol.uppercased())
            .font(.headline)
            .foregroundColor(Color.theme.secondaryText)
            CoinImageView(coin: vm.coin)//topにcoinLogo表示
                .frame(width: 25, height: 25)
        }
    }
    
    private var overviewTitle: some View {
        Text("Overview")
            .font(.title)
            .bold()
            .foregroundColor(Color.theme.accent)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var additionalTitle: some View {
        Text("Additional Details")
            .font(.title)
            .bold()
            .foregroundColor(Color.theme.accent)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var descriptionSection: some View {//new
        ZStack {//new
            if let coinDescription = vm.coinDescription, !coinDescription.isEmpty {
                VStack(alignment: .leading) {
                Text(coinDescription)
                        .lineLimit(showFullDescription ? nil : 3)
                    .font(.callout)
                    .foregroundColor(Color.theme.secondaryText)
                
                Button(action: {
                    withAnimation(.easeInOut) {
                        showFullDescription.toggle()
                        
                    }
                    
                }, label: {
                    Text(showFullDescription ? "Less" : "Read more...")
                        .font(.caption)
                        .fontWeight(.bold)
                        .padding(.vertical, 4)
                })
                .accentColor(.white)
              }
            .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
    
    private var overviewGrid: some View {
        LazyVGrid(
            columns: columns,
            alignment: .leading,
            spacing: spacing,
            pinnedViews: [],
            content: {
                ForEach(vm.overviewStatistics) { stat in //update
                    StatisticView(stat: stat)
                }
                
            })
    }
    
    private var additionalGrid: some View {
        LazyVGrid(
            columns: columns,
            alignment: .leading,
            spacing: spacing,
            pinnedViews: [],
            content: {
                ForEach(vm.additionalStatistics) { stat in       StatisticView(stat: stat)//update
                }
                
            })
    }
    
    private var websiteSection: some View {//new
        VStack(alignment: .leading, spacing: 20){
            if let websiteString = vm.websiteURL,
               let url = URL(string: websiteString) {
                Link("website", destination: url)
            }
            
            if let redditString = vm.redditURL,
               let url = URL(string: redditString) {
                Link("reddit", destination: url)
            }
        }
        .accentColor(.blue)
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.headline)
    }
}
