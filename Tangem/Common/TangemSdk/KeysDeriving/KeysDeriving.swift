//
//  KeysDeriving.swift
//  Tangem
//
//

import Foundation
import TangemSdk

typealias DerivationResult = DeriveMultipleWalletPublicKeysTask.Response

protocol KeysDeriving: AnyObject {
    func deriveKeys(derivations: [Data: [DerivationPath]], completion: @escaping (Result<DerivationResult, TangemSdkError>) -> Void)
}

extension KeysDeriving {
    func deriveKeys(derivations: [Data: [DerivationPath]]) async throws -> DerivationResult {
        return try await withCheckedThrowingContinuation { continuation in
            deriveKeys(derivations: derivations, completion: { result in
                continuation.resume(with: result)
            })
        }
    }
}
