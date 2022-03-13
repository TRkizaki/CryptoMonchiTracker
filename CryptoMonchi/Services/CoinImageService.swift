//
//  CoinImageService.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 13/3/2022.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {//download logic 
    
    @Published var image: UIImage? = nil
    
    private var imageSubscription: AnyCancellable?
    private let coin: CoinModel
    
    init(coin: CoinModel) {// update
        self.coin = coin
        getCoinImage()//CoinImagesviewModelにurlstringを担当してもらうからC
        //oinImageServiceではcoin methodからdataをpickupすることにfocus 
        
    }
    
    private func getCoinImage() {
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)//new //followed all logic  from download func by NetworkingManager module
            .tryMap({ (data) -> UIImage? in
                
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedImage) in //updated
                self?.image = returnedImage
                self?.imageSubscription?.cancel()
                })
           
        
    }
}
