//
//  MarketDataModel.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 14/3/2022.
//

import Foundation
// JSON data:
/*
 
 URL: https://api.coingecko.com/api/v3/global
 JSON RESPONSE:
 {
   "data": {
     "active_cryptocurrencies": 13120,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 771,
     "total_market_cap": {
       "btc": 46598807.545957424,
       "eth": 706171066.0936186,
       "ltc": 17219245478.88554,
       "bch": 6305772693.353173,
       "bnb": 4873401071.368584,
       "eos": 925766093913.9993,
       "xrp": 2308169468637.074,
       "xlm": 9797941534905.793,
       "link": 137692404638.34506,
       "dot": 101407180610.63478,
       "yfi": 97830579.15346761,
       "usd": 1807325439072.4858,
       "aed": 6638320796316.748,
       "ars": 196626342743670.4,
       "aud": 2477638949193.7627,
       "bdt": 155260715466935.56,
       "bhd": 681000225442.5146,
       "bmd": 1807325439072.4858,
       "brl": 9172810974521.963,
       "cad": 2300427075241.83,
       "chf": 1689289014646.662,
       "clp": 1456632010874860.8,
       "cny": 11458081818631.756,
       "czk": 41639784087238.6,
       "dkk": 12313662452186.904,
       "eur": 1654969711884.1167,
       "gbp": 1385454113107.8708,
       "hkd": 14148728529423.736,
       "huf": 632067792842347.1,
       "idr": 25893551565591484,
       "ils": 5885535411759.736,
       "inr": 138728854842852.81,
       "jpy": 212138438062011.1,
       "krw": 2235851337303767,
       "kwd": 548774488994.5321,
       "lkr": 460037117890657.2,
       "mmk": 3207897719231345,
       "mxn": 37828174497394.37,
       "myr": 7580826554189.557,
       "ngn": 751558210583902.4,
       "nok": 16235782763328.633,
       "nzd": 2652042239413.3794,
       "php": 94679454113970.75,
       "pkr": 322969055962253.06,
       "pln": 7923480998834.178,
       "rub": 238747690501475.44,
       "sar": 6780542849768.253,
       "sek": 17646337012134.375,
       "sgd": 2461369405591.234,
       "thb": 60223761537163.875,
       "try": 26585757208756.297,
       "twd": 51350634037646.805,
       "uah": 53040405608186.016,
       "vef": 180967496214.32822,
       "vnd": 41342569418783096,
       "zar": 27190417814977.8,
       "xdr": 1293999831239.9243,
       "xag": 69891660398.51245,
       "xau": 909156988.8710232,
       "bits": 46598807545957.42,
       "sats": 4659880754595742
     },
     "total_volume": {
       "btc": 1432446.7374478276,
       "eth": 21707689.38042521,
       "ltc": 529319381.90084994,
       "bch": 193839370.5197927,
       "bnb": 149808285.503269,
       "eos": 28458037677.446346,
       "xrp": 70953099423.52153,
       "xlm": 301188595256.18787,
       "link": 4232662726.4232297,
       "dot": 3117255412.0880747,
       "yfi": 3007310.729846636,
       "usd": 55557160473.52888,
       "aed": 204061894876.5552,
       "ars": 6044291216715.984,
       "aud": 76162589050.07457,
       "bdt": 4772712372630.688,
       "bhd": 20933938066.425743,
       "bmd": 55557160473.52888,
       "brl": 281972089966.48474,
       "cad": 70715098351.3242,
       "chf": 51928722323.002716,
       "clp": 44776849055245.336,
       "cny": 352221285970.0787,
       "czk": 1280006420871.8452,
       "dkk": 378521823509.60504,
       "eur": 50873747402.770935,
       "gbp": 42588841404.3164,
       "hkd": 434931730839.2428,
       "huf": 19429755725185.2,
       "idr": 795967438104247.6,
       "ils": 180921281953.28207,
       "inr": 4264523192219.699,
       "jpy": 6521132824901.396,
       "krw": 68730041007604.92,
       "kwd": 16869320649.021881,
       "lkr": 14141535016265.492,
       "mmk": 98610734136219.53,
       "mxn": 1162837591690.7026,
       "myr": 233034509606.21732,
       "ngn": 23102889611312.246,
       "nok": 499087750825.06104,
       "nzd": 81523743921.44917,
       "php": 2910445187146.519,
       "pkr": 9928064576619.605,
       "pln": 243567702774.7143,
       "rub": 7339100898553.167,
       "sar": 208433798948.53854,
       "sek": 542448170074.03485,
       "sgd": 75662463491.49191,
       "thb": 1851277645799.5498,
       "try": 817245830565.6106,
       "twd": 1578517821954.133,
       "uah": 1630461378038.992,
       "vef": 5562938478.214453,
       "vnd": 1270870045831972.5,
       "zar": 835833089730.7942,
       "xdr": 39777537970.03488,
       "xag": 2148468730.963182,
       "xau": 27947474.004603963,
       "bits": 1432446737447.8276,
       "sats": 143244673744782.75
     },
     "market_cap_percentage": {
       "btc": 40.735913641736055,
       "eth": 16.988723030135276,
       "usdt": 4.415925276819823,
       "bnb": 3.4483586281145895,
       "usdc": 2.8900087955979994,
       "xrp": 2.07905752417546,
       "luna": 1.8338898598702573,
       "ada": 1.4240394382506767,
       "sol": 1.4194923583668952,
       "dot": 1.077464905767499
     },
     "market_cap_change_percentage_24h_usd": -0.883368747091689,
     "updated_at": 1647202317
   }
 }
 */



struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()//update
            
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
