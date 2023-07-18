//
//  EspensesList.swift
//  IFinance
//
//  Created by Breno Alencar on 07/07/23.
//

import SwiftUI

struct EspensesList: View {
    @State private var expensesList = [
        Expense(expense: "Snacks", value: "10", date: Date(), parcels: 10)
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
