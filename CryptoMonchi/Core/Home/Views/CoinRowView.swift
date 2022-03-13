//
//  CoinRowView.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 12/3/2022.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    let showHoldingsColumn: Bool//add
    
    var body: some View {
        HStack(spacing: 0) {
            leftColumn
            Spacer()
            if showHoldingsColumn {
                centerColumn
            }
            rightColumn
        }
        .font(.subheadline)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)//new //BTCのrowしか表示しない
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)//new //BTCのrowしか表示しない
                .preferredColorScheme(.dark)
            
        }
        
    }
}

extension CoinRowView {
    private var leftColumn: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
            .font(.caption)
            .foregroundColor(Color.theme.secondaryText)
            .frame(minWidth: 30)
            CoinImageView(coin: coin)//update
            .frame(width: 30, height: 30)
        Text(coin.symbol.uppercased())
            .font(.headline)
            .padding(.leading, 6)
            .foregroundColor(Color.theme.accent)
        
    }
  }
    private var centerColumn: some View {
        VStack(alignment: .trailing) {// new
            Text(coin.currentHoldingsValue.asCurrencyWith2Decimals())//update
                .bold()//new
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundColor(Color.theme.accent)//new
        
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWith6Decimals())//add
                .bold()
                .foregroundColor(Color.theme.accent)
            Text(coin.priceChangePercentage24H?.asPercentString() ?? "") // ?? ->otherwise //update
                .foregroundColor(
                    (coin.priceChangePercentage24H ?? 0) >= 0 ?
                    Color.theme.green :
                        Color.theme.red
                    )
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing) //screen3分割
        
    }
}

