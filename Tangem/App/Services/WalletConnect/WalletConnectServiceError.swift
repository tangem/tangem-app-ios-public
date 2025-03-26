//
//  WalletConnectServiceError.swift
//  Tangem
//
//

import Foundation

enum WalletConnectServiceError: LocalizedError {
    case signFailed

    var shouldHandle: Bool {
        return true
    }

    var errorDescription: String? {
        switch self {
        case .signFailed: return Localization.walletConnectErrorSingFailed
        }
    }
}

extension WalletConnectServiceError {
    enum TxErrorCodes: String {
        case noWalletManager
        case wrongAddress
        case noValue
    }
}
