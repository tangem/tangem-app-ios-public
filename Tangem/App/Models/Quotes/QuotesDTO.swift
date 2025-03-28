//
//  QuotesDTO.swift
//  Tangem
//
//

import Foundation

enum QuotesDTO {}

extension QuotesDTO {
    struct Response: Decodable {
        /// Key is `coinId`
        let quotes: [String: Fields]

        struct Fields: Decodable {
            let price: Decimal?
            let priceChange24h: Decimal?
            let priceChange1w: Decimal?
            let priceChange30d: Decimal?
            let prices24h: [String: Double]?
        }
    }
}

extension QuotesDTO {
    struct Request: Encodable {
        let coinIds: [String]
        let currencyId: String
        let fields: [Fields]

        enum Fields: String, Encodable {
            case priceChange24h
            case priceChange7d = "priceChange1w"
            case priceChange30d
            case price
            case lastUpdatedAt
        }

        enum CodingKeys: CodingKey {
            case coinIds
            case currencyId
            case fields
        }

        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: QuotesDTO.Request.CodingKeys.self)
            try container.encode(coinIds.joined(separator: ","), forKey: QuotesDTO.Request.CodingKeys.coinIds)
            try container.encode(currencyId, forKey: QuotesDTO.Request.CodingKeys.currencyId)
            try container.encode(fields.map { $0.rawValue }.joined(separator: ","), forKey: QuotesDTO.Request.CodingKeys.fields)
        }
    }
}
