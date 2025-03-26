//
//  PendingExpressTxStatusRoutable.swift
//  Tangem
//
//

import Foundation

protocol PendingExpressTxStatusRoutable: AnyObject {
    func openURL(_ url: URL)
    func openCurrency(tokenItem: TokenItem)
}
