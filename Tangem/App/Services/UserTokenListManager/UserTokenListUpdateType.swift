//
//  UserTokenListUpdateType.swift
//  Tangem
//
//

import Foundation
import struct BlockchainSdk.Token

enum UserTokenListUpdateType {
    case append(_ entries: [StorageEntry])
    case removeBlockchain(_ blockchainNetwork: BlockchainNetwork)
    case removeToken(_ token: Token, in: BlockchainNetwork)
}
