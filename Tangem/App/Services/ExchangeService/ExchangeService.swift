//
//  ExchangeService.swift
//  Tangem
//
//  Created by Andrew Son on 05/07/21.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation
import BlockchainSdk

protocol ExchangeService: AnyObject {
    var initialized: Published<Bool>.Publisher { get }
    var successCloseUrl: String { get }
    var sellRequestUrl: String { get }
    // TODO: Remove after merge https://github.com/tangem/tangem-app-ios/pull/1239
    // Add separate interface for configuring CombineExchangeService
    func initialize(for environment: ExchangeServiceEnvironment)
    func canBuy(_ currencySymbol: String, amountType: Amount.AmountType, blockchain: Blockchain) -> Bool
    func canSell(_ currencySymbol: String, amountType: Amount.AmountType, blockchain: Blockchain) -> Bool
    func getBuyUrl(currencySymbol: String, amountType: Amount.AmountType, blockchain: Blockchain, walletAddress: String) -> URL?
    func getSellUrl(currencySymbol: String, amountType: Amount.AmountType, blockchain: Blockchain, walletAddress: String) -> URL?
    func extractSellCryptoRequest(from data: String) -> SellCryptoRequest?
}

enum ExchangeServiceEnvironment {
    case `default`
    case saltpay
}

private struct ExchangeServiceKey: InjectionKey {
    static var currentValue: ExchangeService = CombinedExchangeService(
        mercuryoService: MercuryoService(),
        utorgService: UtorgService(),
        sellService: MoonPayService()
    )
}

extension InjectedValues {
    var exchangeService: ExchangeService {
        get { Self[ExchangeServiceKey.self] }
        set { Self[ExchangeServiceKey.self] = newValue }
    }
}
