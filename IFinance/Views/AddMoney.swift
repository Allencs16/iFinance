//
//  AddMoney.swift
//  IFinance
//
//  Created by Breno Alencar on 17/07/23.
//

import SwiftUI

struct AddMoney: View {
    @State private var value: String = ""
    @State private var category: String = ""
    var body: some View {
        VStack {
            Text("Add money")
            Form {
                HStack{
                    TextField("Value", text: $value)
                        .frame(width: 400)
                    Menu("Category"){
                        Button("Health"){
                            category = "Health"
                        }
                        Button("Groceries"){
                            category = "Groceries"
                        }
                    }.frame(width: 100)
                }
            }
            Button("Submit"){
                print(value + category)
            }
        }
    }
}

struct AddMoney_Previews: PreviewProvider {
    static var previews: some View {
        AddMoney()
    }
}
