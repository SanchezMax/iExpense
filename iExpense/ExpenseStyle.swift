//
//  ExpenseStyle.swift
//  iExpense
//
//  Created by Aleksey Novikov on 29.06.2023.
//

import SwiftUI

struct ExpenseStyle: ViewModifier { // create a struct that follows the ViewModifier protocol
    let expenseItem: ExpenseItem // create an instance of an ExpenseItem

    func body(content: Content) -> some View {
        switch expenseItem.amount { // Switch statement to control which modifiers are shown and when
        case 0..<10:
            content
                .foregroundColor(.green)
        case 10..<100:
            content
                .foregroundColor(.blue)
        default:
            content
                .font(.headline)
                .foregroundColor(.red)
        }
    }
}

extension View { // creates an extension to the View protocol
    func expenseStyle(for expenseItem: ExpenseItem) -> some View {
        modifier(ExpenseStyle(expenseItem: expenseItem))
    }
}
