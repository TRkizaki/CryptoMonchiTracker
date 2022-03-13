//
//  HomeStatsView.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 13/3/2022.
//

import SwiftUI

struct HomeStatsView: View {
    
    @EnvironmentObject private var vm: HomeViewModel //add 
    @Binding var showPortfolio: Bool
    
    var body: some View {
        HStack {
            ForEach(vm.statistics) { stat in//update
                StatisticView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
               }
            }
        .frame(width: UIScreen.main.bounds.width,
               alignment: showPortfolio ? .trailing : .leading
        )
    }
}

struct HomeStatsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStatsView(showPortfolio: .constant(false))
            .environmentObject(dev.homeVM)//add
    }
}
