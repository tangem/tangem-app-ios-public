//
//  TokenIconURLBuilderMock.swift
//  Tangem
//
//  Created by Sergey Balashov on 06.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct TokenIconURLBuilderMock: TokenIconURLBuilding {
    func iconURL(id: String, size: TokenURLIconSize = .large) -> URL {
        CoinsResponse.baseURL
            .appendingPathComponent("coins")
            .appendingPathComponent(size.rawValue)
            .appendingPathComponent("\(id).png")
    }
}
