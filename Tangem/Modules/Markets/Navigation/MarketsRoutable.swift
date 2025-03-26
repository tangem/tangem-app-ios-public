//
//  MarketsRoutable.swift
//  Tangem
//
//

import Foundation

protocol MarketsRoutable: AnyObject {
    func openFilterOrderBottonSheet(with provider: MarketsListDataFilterProvider)
    func openMarketsTokenDetails(for tokenInfo: MarketsTokenModel)
}
