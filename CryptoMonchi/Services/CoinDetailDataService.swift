//
//  CoinDetailDataService.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 17/3/2022.
//

import Foundation
import Combine

class CoinDetailDataService {
    
    
    @Published var coinDetails: CoinDetailModel? = nil
    
    var coinDetailSubscription: AnyCancellable?
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoinDetails()
    }
    
    func getCoinDetails() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/\(coin.id)?localization=false%20&tickers=false&market_data=false&community_data=false&developer_data=false&sparkline=false")
        else { return }
        
        
        coinDetailSubscription = NetworkingManager.download(url: url)//new //followed all logic  from download func by NetworkingManager module
            .decode(type: CoinDetailModel.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedCoinDetails) in //updated
                self?.coinDetails = returnedCoinDetails
                self?.coinDetailSubscription?.cancel()
                })
            
    }
}
