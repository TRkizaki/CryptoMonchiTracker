//
//  String.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 18/3/2022.
//

import Foundation

extension String {
    
    
    
    var removingHTMLOccurrences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
