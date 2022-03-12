//
//  PreviewProvider.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 12/3/2022.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
    
}

class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    private init() { }
    
    let homeVM = HomeViewModel()//new 
        
    let coin = CoinModel(
            id: "bitcoin",
            symbol: "btc",
            name: "Bitcoin",
            image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
            currentPrice: 38890,
            marketCap: 738516733198,
            marketCapRank: 1,
            fullyDilutedValuation: 817094751032,
            totalVolume: 23312666432,
            high24H: 40183,
            low24H: 38347,
            priceChange24H: -241.256567361423,
            priceChangePercentage24H: -0.61654,
            marketCapChange24H: -4018432732.6103516,
            marketCapChangePercentage24H: -0.54118,
            circulatingSupply: 18980481,
            totalSupply: 21000000,
            maxSupply: 21000000,
            ath: 69045,
            athChangePercentage: -43.72055,
            athDate: "2021-11-10T14:24:11.849Z",
            atl: 67.81,
            atlChangePercentage: 57205.10413,
            atlDate: "2013-07-06T00:00:00.000Z",
            lastUpdated: "2022-03-11T18:31:41.329Z",
            sparklineIn7D: SparklineIn7D(price : [
                40867.85863308533,
                40718.108240128626,
                39885.827136564905,
                39612.691985350975,
                39524.0284451596,
                38971.95496777563,
                39200.29973557414,
                38907.833257994535,
                38983.90618824478,
                38998.40423265102,
                39109.06860279758,
                38922.72630135833,
                39018.88400192705,
                39047.23770197715,
                39092.14744409206,
                39145.27264413488,
                39070.20884181727,
                39186.978010848026,
                39210.9175964596,
                39152.05618937005,
                39093.25905168898,
                39186.95729407749,
                39230.67271867988,
                39413.899760668915,
                39523.7642348816,
                39467.07328809329,
                39507.057736587434,
                39556.923819552416,
                39453.91956524555,
                39515.00049382657,
                39465.92350920515,
                39608.44670346521,
                39522.024591525966,
                39560.10585074321,
                39418.340539482255,
                39572.88737629683,
                39572.62631548639,
                39533.87615972594,
                39443.710457829875,
                39201.60039638006,
                38774.82128238143,
                38354.33844774822,
                38391.44751811932,
                38614.667798511095,
                38953.75752763195,
                38908.5160794143,
                38920.129245907396,
                39251.67745409224,
                39036.41138790572,
                38948.41370450985,
                38781.12688310102,
                38933.71815378388,
                39054.911413062095,
                39053.32761603085,
                38442.99174588676,
                38375.11722206218,
                38417.63711249957,
                37747.223722625204,
                37937.02474660312,
                37946.796046108146,
                38123.5880222772,
                38201.22598135243,
                38006.64029600238,
                38099.55209391013,
                38238.29450615601,
                38201.67653161494,
                38360.23140030268,
                38665.02487425728,
                38946.022921521035,
                38990.64833695661,
                39060.35262308791,
                38854.68221821108,
                38830.4807462585,
                38088.635146086766,
                37387.923708175374,
                37626.91418746491,
                37998.19115643765,
                38171.92522563868,
                38076.49382252028,
                38293.06210123176,
                38407.581601489735,
                38682.77956130959,
                38712.13979299338,
                38567.50221274547,
                38375.971751771154,
                38255.44458623921,
                38538.73382376017,
                38808.24357936828,
                38983.253341558564,
                38972.77172677894,
                39005.830094975034,
                38733.54784534266,
                38938.05349268123,
                38835.958192969134,
                38613.54939918567,
                38411.063348207266,
                39077.070806905955,
                38799.82676978917,
                38799.13428476805,
                38538.53448453165,
                38504.38623020424,
                38606.23168566967,
                38732.93701302586,
                38933.46976121403,
                39211.37744751425,
                39472.01949650629,
                41212.348229511816,
                41596.05400842972,
                41442.30768951393,
                41617.87502125357,
                41760.19634727429,
                42280.45238904672,
                42095.57881718939,
                42183.005723048125,
                42177.132689147686,
                41937.06825741402,
                41822.19044784919,
                42125.8776167458,
                42438.70954204916,
                42240.61274446614,
                42322.5219510845,
                42059.655679297284,
                42267.55881375633,
                41844.96681814542,
                41930.27975165324,
                41930.29984143982,
                41986.03444607623,
                41830.68110313286,
                40947.804008269486,
                40857.56901278795,
                40830.10629542302,
                39574.644441139804,
                39248.985110899375,
                39349.816900116,
                39305.50014384548,
                39254.9960796409,
                39228.24010809291,
                39093.583453529456,
                39134.513389302614,
                39285.40916966334,
                39017.831410308885,
                39328.707167865294,
                39235.41198897474,
                39145.919726634515,
                39219.78782726495,
                39223.48522865089,
                39358.78138531594,
                39663.35595672147,
                39375.73619962042,
                39478.45524588765,
                39468.35477300189,
                39308.471111594095,
                38688.81500193178,
                38453.959786611726,
                38815.07785010744,
                38608.62080190156,
                38774.18898344666,
                38921.28064531711,
                39198.6251930636,
                38988.50695594328,
                39041.96101970056,
                39042.198099624926,
                39076.422766030664,
                39797.65747232564,
                39823.05367947227,
                39244.448293388086,
                39333.0771380783,
                39105.90213395263,
                38764.6759166656
            ]),
            
            priceChangePercentage24HInCurrency: -0.6165382484246305,
            currentHoldings: 1.5
      )
          
     
    }

