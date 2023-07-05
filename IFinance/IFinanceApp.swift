//
//  IFinanceApp.swift
//  IFinance
//
//  Created by Breno Alencar on 04/07/23.
//

import SwiftUI

@main
struct IFinanceApp: App {
    var body: some Scene {
#if os(iOS)
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem{
                        Label("main", systemImage: "book")
                    }
                SettingsView()
                    .tabItem{
                        Label("Settings", systemImage: "gear")
                    }
            }
        }
        #elseif os(macOS)
        WindowGroup{
            ContentView()
        }
        
        
#endif
    }
}
