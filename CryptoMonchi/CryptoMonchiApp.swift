//
//  CryptoMonchiApp.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 11/3/2022.
//

import SwiftUI

@main
struct CryptoMonchiApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm) //access HomeViewModel
        }
    }
}
