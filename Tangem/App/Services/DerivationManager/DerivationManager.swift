//
//  DerivationManager.swift
//  Tangem
//
//

import Foundation
import Combine
import TangemSdk

protocol DerivationManager {
    var hasPendingDerivations: AnyPublisher<Bool, Never> { get }
    var pendingDerivationsCount: AnyPublisher<Int, Never> { get }

    func deriveKeys(cardInteractor: KeysDeriving, completion: @escaping (Result<Void, TangemSdkError>) -> Void)
}

// TODO: refactor keys storage to single source and remove this delegate
protocol DerivationManagerDelegate: AnyObject {
    func onDerived(_ response: DerivationResult)
}
