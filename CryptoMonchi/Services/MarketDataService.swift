//
//  MarketDataService.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 14/3/2022.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    
    var marketDataSubscription: AnyCancellable?
   
    
    init() {
        getData()
    }
    
    func getData() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global")
        else { return }
        
        
        marketDataSubscription = NetworkingManager.download(url: url)//new //followed all logic  from download func by NetworkingManager module
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main) //new
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedGlobalData) in //updated
                self?.marketData = returnedGlobalData.data
                self?.marketDataSubscription?.cancel()
                })
            
    }
}

