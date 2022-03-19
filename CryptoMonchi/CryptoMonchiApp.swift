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
    @State private var showLaunchView: Bool = true
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
               NavigationView {
                  HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm) //access HomeViewModel
                
                ZStack {
                if showLaunchView {
                    LaunchView(showLaunchView: $showLaunchView)
                        .transition(.move(edge: .leading))
                   }
                }
                .zIndex(2.0)
            }
        }
    }
}
