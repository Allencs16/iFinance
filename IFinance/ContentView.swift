//
//  ContentView.swift
//  IFinance
//
//  Created by Breno Alencar on 04/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            SideMenu()
        } detail: {
            HomeView()
        }.toolbar{
            ToolbarItem(placement: .automatic){
                Button(action: {
                    
                }){
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
