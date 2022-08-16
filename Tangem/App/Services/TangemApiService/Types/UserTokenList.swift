//
//  UserTokenList.swift
//  Tangem
//
//  Created by Sergey Balashov on 15.08.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct UserTokenList: Codable {
    let version: Int = 0
    let group: GroupType = .none
    let sort: SortType = .manual
    let tokens: [Token]
}

extension UserTokenList {
    struct Token: Codable {
        let id: String?
        let networkId: String?
        let derivationPath: String?
        let name: String?
        let symbol: String?
        let decimals: Int?
    }

    enum GroupType: String, Codable {
        case none
        case network
        case token
    }

    enum SortType: String, Codable {
        case balance
        case manual
        case marketcap
    }
}
