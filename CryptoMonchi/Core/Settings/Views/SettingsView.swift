//
//  SettingsView.swift
//  CryptoMonchi
//
//  Created by DJ perrier  on 18/3/2022.
//

import SwiftUI

struct SettingsView: View {

    let defaultURL = URL(string: "https://www.google.com")!
    let instagramURL = URL(string: "https://www.instagram.com/monchi.illustration")!
    let coffeeURL = URL(string: "https://www.buymeacoffee.com/trkizaki")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let githubURL = URL(string: "https://github.com/TRkizaki")!
    
    
    
    var body: some View {
        NavigationView {//new
            List {
                monchiSection
                coinGeckoSection
                developerSection
                applicationSection
            }
            .font(.headline)//new
            .accentColor(.blue)//new
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var monchiSection: some View {
        Section(header: Text("MonchiCryptoTracker 💰")) {
            VStack(alignment: .leading) {
               Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This Crypto Tracker App uses MVVM Architecture and cutest UI/UX design, CoreData from by coinGecko! You can search a bunch of crypto information and details. Hope you have fun tracking of cryptocurrency.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Follow our Design Account by Instagram 😋", destination: instagramURL)
            Link("Support my coffee addiction ☕", destination: coffeeURL)
        }
    }
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading) {
               Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🦎", destination: coingeckoURL)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by trkizaki.It uses SwiftUI and is written 100% in Swift. The project benefits from multi-threading, publishers/subscribers, and data persistane.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit my GitHub 📲", destination: githubURL)
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Aplication")) {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        }
    }
}
