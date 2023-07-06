//
//  ContentView.swift
//  IFinance
//
//  Created by Breno Alencar on 04/07/23.
//

import SwiftUI

struct ContentView: View {
    @State var firstNumber: Int = 0;
    var body: some View {
        VStack{
            NavigationSplitView {
                Text("IFinance").foregroundColor(.primary)
                Button(action: {
                    firstNumber += 1
                    print("Teste \(firstNumber)")
                }){
                    Text("Settings")
                }
            } detail: {
                VStack{
                    HStack{
                        VStack{
                            Text("Dinheiro disponivel").font(.title2)
                            Text("$\(firstNumber)").font(.title2)
                        }.padding(.all)
                            .background(Color.white)
                            .opacity(0.4)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                        VStack{
                            Text("Dinheiro disponivel").font(.title2)
                            Text("$\(firstNumber)").font(.title2)
                        }.padding(.all)
                            .background(Color.white)
                            .opacity(0.4)
                            .cornerRadius(20)
                            .shadow(radius: 5)
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
