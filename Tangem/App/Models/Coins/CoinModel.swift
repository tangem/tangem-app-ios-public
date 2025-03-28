//
//  CoinModel.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk
import TangemSdk

struct CoinModel {
    let id: String
    let name: String
    let symbol: String
    let items: [Item]
}

extension CoinModel {
    struct Item {
        let id: String
        let tokenItem: TokenItem

        var token: Token? { tokenItem.token }
        var blockchain: Blockchain { tokenItem.blockchain }
    }
}

extension CoinModel {
    // Need for loading state skeleton view
    static var dummy: CoinModel {
        CoinModel(id: "\(Int.random(in: 0 ... 1000))", name: "----------------", symbol: "", items: [])
    }
}
