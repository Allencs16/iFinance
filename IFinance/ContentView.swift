//
//  ContentView.swift
//  IFinance
//
//  Created by Breno Alencar on 04/07/23.
//

import SwiftUI

struct ContentView: View {
    @State var expenses: Int = 0;
    @State var money: Int = 0;
    var body: some View {
        VStack{
            NavigationSplitView {
                Button(action: {
                    money += 1
                }){
                    Text("Add money")
                }
                Button(action: {
                    expenses += 1
                }){
                    Text("Add expenses")
                }
            } detail: {
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
