//
//  AccountCreator.swift
//  BlockchainSdk
//
//

import Foundation
import Combine

public protocol AccountCreator {
    func createAccount(blockchain: Blockchain, publicKey: Wallet.PublicKey) -> any Publisher<CreatedAccount, Error>
}
