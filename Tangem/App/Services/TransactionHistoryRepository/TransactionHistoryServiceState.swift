//
//  TransactionHistoryServiceState.swift
//  Tangem
//
//

import Foundation

enum TransactionHistoryServiceState {
    case initial
    case loading
    case failedToLoad(Error)
    case loaded

    var isLoading: Bool {
        if case .loading = self {
            return true
        }

        return false
    }
}
