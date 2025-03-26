//
//  DummyMarketTokenModelFactory.swift
//  Tangem
//
//

import Foundation

struct DummyMarketTokenModelFactory {
    func list() -> [MarketsTokenModel] {
        let response = try? JsonUtils.readBundleFile(with: "coinsListResponse", type: MarketsDTO.General.Response.self)
        return response?.tokens ?? []
    }
}
