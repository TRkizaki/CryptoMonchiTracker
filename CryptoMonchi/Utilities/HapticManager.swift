//
//  HapticManager.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 15/3/2022.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
        
    }
    
}
