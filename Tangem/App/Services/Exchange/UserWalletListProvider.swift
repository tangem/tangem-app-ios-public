//
//  UserWalletListProvider.swift
//  Tangem
//
//  Created by Sergey Balashov on 06.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import TangemExchange

struct UserWalletListProvider {
    private let walletModel: WalletModel

    init(walletModel: WalletModel) {
        self.walletModel = walletModel
    }
}

// MARK: - UserWalletsListProviding

extension UserWalletListProvider: UserWalletsListProviding {
    func saveCurrencyInUserList(currency: TangemExchange.Currency) {
        // TODO: add currency to user token list
    }

    func getUserCurrencies(blockchain exchangeBlockchain: ExchangeBlockchain) -> [Currency] {
        let blockchain = walletModel.blockchainNetwork.blockchain

        guard blockchain.networkId == exchangeBlockchain.networkId else {
            assertionFailure("incorrect blockchain in WalletModel")
            return []
        }

        let mapper = CurrencyMapper()
        var currencies: [Currency] = []
        if let coinCurrency = mapper.mapToCurrency(blockchain: blockchain) {
            currencies.append(coinCurrency)
        }

        currencies += walletModel.getTokens().compactMap {
            mapper.mapToCurrency(token: $0, blockchain: blockchain)
        }

        return currencies
    }
}
