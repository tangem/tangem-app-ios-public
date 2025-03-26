//
//  KeysDerivingMock.swift
//  Tangem
//
//

import Foundation
import TangemSdk

class KeysDerivingMock: KeysDeriving {
    func deriveKeys(derivations: [Data: [DerivationPath]], completion: @escaping (Result<DerivationResult, TangemSdkError>) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            completion(.success([:]))
        }
    }
}
