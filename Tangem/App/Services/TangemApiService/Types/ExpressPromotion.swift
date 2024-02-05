//
//  ExpressPromotion.swift
//  Tangem
//
//  Created by Sergey Balashov on 05.02.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

enum ExpressPromotion {}

extension ExpressPromotion {
    struct Request: Encodable {
        let programName: String
    }

    struct Response: Decodable {
        let start: Date
        let end: Date
    }
}
