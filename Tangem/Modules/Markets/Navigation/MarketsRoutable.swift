//
//  MarketsRoutable.swift
//  Tangem
//
//  Created by skibinalexander on 14.09.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

protocol MarketsRoutable: AnyObject {
    func openFilterOrderBottonSheet(with provider: MarketsListDataFilterProvider)
    func openMarketsTokenDetails(for tokenInfo: MarketsTokenModel)
}
