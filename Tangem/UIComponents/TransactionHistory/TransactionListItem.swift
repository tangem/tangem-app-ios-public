//
//  TransactionListItem.swift
//  Tangem
//
//

import Foundation

struct TransactionListItem: Hashable, Identifiable {
    var id: Int { hashValue }

    let header: String
    let items: [TransactionViewModel]
}
