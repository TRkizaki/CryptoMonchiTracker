//
//  Color.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 11/3/2022.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
    static let launch = LaunchTheme()//new
    
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}

struct LaunchTheme {//new
    
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
}
