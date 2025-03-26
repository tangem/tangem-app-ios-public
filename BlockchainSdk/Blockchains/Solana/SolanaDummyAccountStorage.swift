//
//  SolanaDummyAccountStorage.swift
//  BlockchainSdk
//
//

import Foundation
import SolanaSwift

class SolanaDummyAccountStorage: SolanaAccountStorage {
    enum SolanaDummyAccountStorageError: Error {
        case notImplemented
    }

    func save(_ account: Account) -> Result<Void, Error> {
        return .failure(SolanaDummyAccountStorageError.notImplemented)
    }

    var account: Result<Account, Error> {
        return .failure(SolanaDummyAccountStorageError.notImplemented)
    }

    func clear() -> Result<Void, Error> {
        return .failure(SolanaDummyAccountStorageError.notImplemented)
    }
}
