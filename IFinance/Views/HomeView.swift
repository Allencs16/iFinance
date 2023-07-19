//
//  HomeView.swift
//  IFinance
//
//  Created by Breno Alencar on 18/07/23.
//

import SwiftUI

struct HomeView: View {
    @State var expenses: Int = 0;
    @AppStorage("TEST_KEY") var money = 0
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("Money").font(.title2)
                    Text("$\(money)").font(.title2)
                }.padding(.all)
                    .background(Color.green)
                    .opacity(0.4)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .onTapGesture {
                        money += 1
                    }
                VStack{
                    Text("Expenses").font(.title2)
                    Text("$\(expenses)").font(.title2)
                }.padding(.all)
                    .background(Color.red)
                    .opacity(0.4)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                VStack{
                    Text("Remaining").font(.title2)
                    Text("$\(money - expenses)").font(.title2)
                }.padding(.all)
                    .background(Color.orange)
                    .opacity(0.4)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }.padding(.top)
            EspensesList()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
