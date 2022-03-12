//
//  CryptoMonchiApp.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 11/3/2022.
//

import SwiftUI

@main
struct CryptoMonchiApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
