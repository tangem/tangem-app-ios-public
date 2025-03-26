//
//  BlockchainAccountCreatorStub.swift
//  Tangem
//
//

import Foundation
import Combine
import BlockchainSdk

struct BlockchainAccountCreatorStub: AccountCreator {
    func createAccount(blockchain: Blockchain, publicKey: Wallet.PublicKey) -> any Publisher<CreatedAccount, Error> {
        return Empty()
    }
}
