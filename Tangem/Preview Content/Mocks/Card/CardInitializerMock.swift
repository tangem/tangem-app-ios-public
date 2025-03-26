//
//  CardInitializerMock.swift
//  Tangem
//
//

import Foundation
import TangemSdk

class CardInitializerMock: CardInitializer {
    var shouldReset: Bool = false

    func initializeCard(mnemonic: Mnemonic?, passphrase: String?, completion: @escaping (Result<CardInfo, TangemSdkError>) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let cardInfo = CardInfo(
                card: .init(card: CardMock.wallet.card),
                walletData: .none,
                name: "",
                artwork: .noArtwork,
                primaryCard: nil
            )
            completion(.success(cardInfo))
        }
    }
}
