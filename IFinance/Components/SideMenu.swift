//
//  SideMenu.swift
//  IFinance
//
//  Created by Breno Alencar on 18/07/23.
//

import SwiftUI

struct SideMenu: View {
    var body: some View {
        List{
            NavigationLink(destination: HomeView()){
                Label("Home", systemImage: "house")
            }
            NavigationLink(destination: AddMoney()){
                Label("Money", systemImage: "brazilianrealsign.circle")
            }
            NavigationLink(destination: AddExpenses()){
                Label("Expenses", systemImage: "chevron.up.square")
            }
        }
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu().frame(width: 150)
    }
}
