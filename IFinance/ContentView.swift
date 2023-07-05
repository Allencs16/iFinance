//
//  ContentView.swift
//  IFinance
//
//  Created by Breno Alencar on 04/07/23.
//

import SwiftUI
var number: Int = 0

struct ContentView: View {
    var body: some View {
        VStack{
            NavigationSplitView {
                Text("IFinance").foregroundColor(.primary)
                Button("Settings"){
                    SettingsView()
                }
            } detail: {
                /*@START_MENU_TOKEN@*/Text("Detail")/*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
