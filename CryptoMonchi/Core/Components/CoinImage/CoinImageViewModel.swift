//
//  CoinImageViewModel.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 13/3/2022.
//

import Foundation
import SwiftUI
import Combine

class CoinImageViewModel: ObservableObject {//View Logic 
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancellabels = Set<AnyCancellable>()//new
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: coin) //update
        self.addSubscribers()//update
        self.isLoading = true//new
            
        }
    
        private func addSubscribers() {//update
            
            dataService.$image
                .sink{ [weak self] (_) in
                    self?.isLoading = false
                } receiveValue: { [weak self] (returnedImage) in
                    self?.image = returnedImage
                    
                }
                .store(in: &cancellabels)
            
        }
}
