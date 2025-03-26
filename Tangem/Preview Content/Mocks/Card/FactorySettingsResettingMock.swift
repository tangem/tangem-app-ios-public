//
//  FactorySettingsResettingMock.swift
//  Tangem
//
//

import Foundation
import TangemSdk

class FactorySettingsResettingMock: FactorySettingsResetting {
    func resetCard(headerMessage: String?, completion: @escaping (Result<Bool, TangemSdkError>) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            completion(.success(true))
        }
    }
}
