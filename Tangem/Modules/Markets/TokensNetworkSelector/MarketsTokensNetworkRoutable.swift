//
//  MarketsTokensNetworkRoutable.swift
//  Tangem
//
//

import Foundation

protocol MarketsTokensNetworkRoutable: AnyObject {
    func openWalletSelector(with provider: MarketsWalletDataProvider)
    func dissmis()
}
