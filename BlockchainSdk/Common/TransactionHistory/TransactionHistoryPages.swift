//
//  TransactionHistoryPages.swift
//  BlockchainSdk
//
//

import Foundation

// Use for indexed navigation state
struct TransactionHistoryIndexPage: Hashable {
    let number: Int
}

// Use for linked navigation state
struct TransactionHistoryLinkedPage: Hashable {
    let next: String?
}
