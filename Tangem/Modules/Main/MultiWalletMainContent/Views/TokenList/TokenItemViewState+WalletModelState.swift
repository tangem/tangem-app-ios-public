//
//  TokenItemViewState+WalletModelState.swift
//  Tangem
//
//

import Foundation

extension TokenItemViewState {
    init(walletModelState: WalletModel.State) {
        switch walletModelState {
        case .created:
            self = .notLoaded
        case .idle:
            self = .loaded
        case .loading:
            self = .loading
        case .noAccount(let message, _):
            self = .noAccount(message: message)
        case .failed(let error):
            self = .networkError(error)
        case .noDerivation:
            self = .noDerivation
        }
    }
}
