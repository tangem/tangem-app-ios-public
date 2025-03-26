//
//  PendingTransactionsListView.swift
//  Tangem
//
//

import Foundation
import SwiftUI

struct PendingTransactionsListView: View {
    let items: [TransactionViewModel]
    let exploreTransactionAction: (String) -> Void

    var body: some View {
        ForEach(items) { item in
            Button {
                exploreTransactionAction(item.hash)
            } label: {
                TransactionView(viewModel: item)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .background(Colors.Background.primary)
        .cornerRadiusContinuous(14)
    }
}
