//
//  JsonUtils.swift
//  Tangem
//
//  Created by Andrew Son on 16/12/20.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

struct JsonUtils {
    static func readBundleFile<T: Decodable>(with name: String, type: T.Type) throws -> T {
        guard let path = Bundle.main.url(forResource: name, withExtension: "json") else {
            throw NSError(domain: "Failed to find json file with name: \"\(name)\"", code: -9999, userInfo: nil)
        }

        return try JSONDecoder().decode(type, from: Data(contentsOf: path))
    }
}
