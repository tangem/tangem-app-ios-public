//
//  RavencoinTransactionHistory.swift
//  BlockchainSdk
//
//

import Foundation

struct RavencoinTransactionHistory {
    struct Request: Encodable {
        let address: String
        /// Counting from zero
        let pageNum: Int

        init(address: String, pageNum: Int = 0) {
            self.address = address
            self.pageNum = pageNum
        }
    }

    struct Response: Decodable {
        let pagesTotal: Int
        let txs: [RavencoinTransactionInfo]
    }
}
