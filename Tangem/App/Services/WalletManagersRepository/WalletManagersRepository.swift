//
//  WalletManagersRepository.swift
//  Tangem
//
//

import Foundation
import Combine
import BlockchainSdk

protocol WalletManagersRepository {
    var walletManagersPublisher: AnyPublisher<[BlockchainNetwork: any WalletManager], Never> { get }
}
