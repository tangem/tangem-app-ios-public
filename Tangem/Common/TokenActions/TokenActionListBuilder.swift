//
//  TokenActionListBuilder.swift
//  Tangem
//
//

import Foundation

struct TokenActionListBuilder {
    /// Uses for decide visibility on the hotizontal action buttons list on `TokenDetails/SingleWalletMain`
    func buildActionsForButtonsList(canShowBuySell: Bool, canShowSwap: Bool) -> [TokenActionType] {
        var actions: [TokenActionType] = []

        actions.append(contentsOf: [.receive, .send])

        if canShowSwap {
            actions.append(.exchange)
        }

        if canShowBuySell {
            actions.append(.buy)
        }

        if canShowBuySell {
            actions.append(.sell)
        }

        return actions
    }

    /// Uses for decide visibility on the long tap menu action buttons list on `TokenItemView`
    func buildTokenContextActions(
        canExchange: Bool,
        canSignTransactions: Bool,
        canSend: Bool,
        canSwap: Bool,
        canStake: Bool,
        isBlockchainReachable: Bool,
        exchangeUtility: ExchangeCryptoUtility
    ) -> [TokenActionType] {
        let canBuy = exchangeUtility.buyAvailable
        let canSell = exchangeUtility.sellAvailable

        var availableActions: [TokenActionType] = [.copyAddress]

        availableActions.append(.receive)

        if canSend {
            availableActions.append(.send)
        }

        if canSignTransactions, isBlockchainReachable, canSwap {
            availableActions.append(.exchange)
        }

        // TODO: Fix naming for canExchange
        if canExchange, canBuy {
            availableActions.append(.buy)
        }

        if canSend, canExchange, canSell {
            availableActions.append(.sell)
        }

        if canSignTransactions, isBlockchainReachable, canStake {
            availableActions.append(.stake)
        }

        return availableActions
    }

    func buildActionsForLockedSingleWallet() -> [TokenActionType] {
        [
            .receive,
            .send,
            .buy,
            .sell,
        ]
    }
}
