//
//  PendingTransactionsListView.swift
//  Tangem
//
//  Created by Sergey Balashov on 05.10.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
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
                    .ios14FixedHeight(Constants.ios14ListItemHeight)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .background(Colors.Background.primary)
        .cornerRadiusContinuous(14)
    }
}

extension PendingTransactionsListView {
    enum Constants {
        @available(iOS, obsoleted: 15.0, message: "Delete when the minimum deployment target reaches 15.0")
        static let ios14ListItemHeight = 56.0
    }
}
