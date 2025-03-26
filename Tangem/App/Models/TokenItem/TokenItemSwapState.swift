//
//  TokenItemSwapState.swift
//  Tangem
//
//

import Foundation

enum TokenItemSwapState: Equatable {
    case available
    case unavailable
    case loading
    case failedToLoadInfo(Error)
    case notLoaded

    static func == (lhs: TokenItemSwapState, rhs: TokenItemSwapState) -> Bool {
        switch (lhs, rhs) {
        case (.available, .available): return true
        case (.unavailable, .unavailable): return true
        case (.loading, .loading): return true
        case (.notLoaded, .notLoaded): return true
        case (.failedToLoadInfo, .failedToLoadInfo): return true
        default: return false
        }
    }
}
