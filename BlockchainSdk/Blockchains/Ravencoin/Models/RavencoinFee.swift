//
//  RavencoinFee.swift
//  BlockchainSdk
//
//

import Foundation

struct RavencoinFee {
    struct Request: Encodable {
        let nbBlocks: Int
        let mode: RavencoinFeeMode

        init(nbBlocks: Int, mode: RavencoinFeeMode = .economical) {
            self.nbBlocks = nbBlocks
            self.mode = mode
        }
    }

    enum RavencoinFeeMode: String, Encodable {
        case economical
        case conservative
    }
}
