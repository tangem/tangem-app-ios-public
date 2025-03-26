//
//  TokenItemViewState.swift
//  Tangem
//
//

import Foundation

enum TokenItemViewState {
    case notLoaded
    case noDerivation
    case loading
    case loaded
    case noAccount(message: String)
    case networkError(Error)
}
