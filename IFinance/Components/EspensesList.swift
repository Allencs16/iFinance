//
//  EspensesList.swift
//  IFinance
//
//  Created by Breno Alencar on 07/07/23.
//

import SwiftUI

struct EspensesList: View {
    @State private var expensesList = [
        Expense(expense: "groceries", value: "20"),
        Expense(expense: "snacks", value: "5")
    ]
    var body: some View {
        VStack{
            Table(expensesList){
                TableColumn("Expense", value: \.expense)
                TableColumn("Value", value: \.value)
            }
        }
    }
}

struct EspensesList_Previews: PreviewProvider {
    static var previews: some View {
        EspensesList()
    }
}
