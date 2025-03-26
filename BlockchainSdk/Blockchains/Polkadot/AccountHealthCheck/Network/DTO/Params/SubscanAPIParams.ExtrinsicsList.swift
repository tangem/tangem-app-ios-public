//
//  SubscanAPIParams.ExtrinsicsList.swift
//  BlockchainSdk
//
//

import Foundation

extension SubscanAPIParams {
    struct ExtrinsicsList: Encodable {
        enum Order: String, Encodable {
            case asc
            case desc
        }

        let address: String
        let order: Order
        let afterId: Int
        let page: Int
        let row: Int
    }
}
