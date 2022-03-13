//
//  UiApplication.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 13/3/2022.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
