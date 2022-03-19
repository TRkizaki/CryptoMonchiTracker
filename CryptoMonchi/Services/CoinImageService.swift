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
    private let fileManager = LocalFileManager.instance //new
    private let folderName = "coin_images"//new
    private let imageName: String //new
    
    init(coin: CoinModel) {// update
        self.coin = coin
        self.imageName = coin.id
        getCoinImage()
    }
    
    private func getCoinImage() {//re-define
        if let savedImage = fileManager.getImage(imageName: imageName, folderName: folderName) {
            image = savedImage
            //print("Retrieve image from File Manager!")
        } else {
            downloadCoinImage()
            //print("Downloding Image Now")
        }
        
    }
    
    private func downloadCoinImage() {//update from getCoinImage
        //print("Downloding Image Now")
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                
                return UIImage(data: data)
            })
            .receive(on: DispatchQueue.main)//new 
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedImage) in //updated
                guard let self = self, let downloadedImage = returnedImage else { return }
                self.image = downloadedImage
                self.imageSubscription?.cancel()
                self.fileManager.saveImage(image: downloadedImage, imageName: self.imageName, folderName: self.folderName)
                })
           
        
    }
}
