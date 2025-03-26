//
//  SprinklrConfig.swift
//  Tangem
//
//

import Foundation

struct SprinklrConfig: Decodable {
    let appID: String
    let apiKey: String
    let environment: String
}
