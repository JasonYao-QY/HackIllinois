//
//  ContentView.swift
//  EasyWallet
//
//  Created by Jason Yao on 3/1/25.
//

import SwiftUI

struct ContentView: View {
    @State private var expenses = [String]()
    @State private var newExpense = ""

    var body: some View {
        VStack {
            TextField("Enter expense", text: $newExpense)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button("Add Expense") {
                if !newExpense.isEmpty {
                    expenses.append(newExpense)
                    newExpense = "" // 清空输入框
                }
            }
            .padding()

            List(expenses, id: \.self) { expense in
                Text(expense)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
