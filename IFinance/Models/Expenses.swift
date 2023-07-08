//
//  Expenses.swift
//  IFinance
//
//  Created by Breno Alencar on 08/07/23.
//

import Foundation

struct Expense: Identifiable{
    let expense: String
    let value: String
    let date: Date
    let parcels: Int
    let id = UUID()
}
