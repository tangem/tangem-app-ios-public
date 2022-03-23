//
//  TangemTokenList.swift
//  Tangem
//
//  Created by Alexander Osokin on 15.03.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct TangemTokenList: Codable {
    let imageHost: URL?
    let tokens: [TangemTokenEntity]
}
