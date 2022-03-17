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
    
    @StateObject var vm: DetailViewModel
    
    init(coin: CoinModel) {//update
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
        print("Initializing Detail View for \(coin.name)")
    }
    
    var body: some View {
                Text("Hello")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}
