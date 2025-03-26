//
//  NEARNetworkResult.APIError+.swift
//  BlockchainSdk
//
//

import Foundation

extension NEARNetworkResult.APIError {
    var isUnknownAccount: Bool {
        return name == .handlerError && cause.name == .unknownAccount
    }

    var isUnknownTransaction: Bool {
        return name == .handlerError && cause.name == .unknownTransaction
    }

    var isInvalidTransaction: Bool {
        return name == .handlerError && cause.name == .invalidTransaction
    }
}
