//
//  TokenItemsRepository.swift
//  Tangem
//
//

import Foundation
import struct BlockchainSdk.Token

// TODO: Andrey Fedorov - The interface and responsibilities of this entity are one big mess, refactoring needed (IOS-4403)
protocol TokenItemsRepository {
    var containsFile: Bool { get }

    func update(_ list: StoredUserTokenList)
    func append(_ entries: [StoredUserTokenList.Entry])

    func remove(_ blockchainNetworks: [BlockchainNetwork])
    func remove(_ entries: [StoredUserTokenList.Entry])
    func removeAll()

    func getList() -> StoredUserTokenList
}
