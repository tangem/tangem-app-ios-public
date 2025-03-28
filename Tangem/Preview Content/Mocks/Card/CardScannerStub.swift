//
//  CardScannerStub.swift
//  Tangem
//
//

import Foundation
import Combine
import CombineExt
import TangemSdk

class CardScannerStub: CardScanner {
    func scanCard(completion: @escaping (Result<AppScanTaskResponse, TangemSdkError>) -> Void) {}

    func scanCardPublisher() -> AnyPublisher<AppScanTaskResponse, TangemSdkError> {
        let response = AppScanTaskResponse(
            card: CardMock.wallet2.card,
            walletData: CardMock.wallet2.walletData,
            primaryCard: nil
        )
        return Just(response)
            .setFailureType(to: TangemSdkError.self)
            .eraseToAnyPublisher()
    }
}
