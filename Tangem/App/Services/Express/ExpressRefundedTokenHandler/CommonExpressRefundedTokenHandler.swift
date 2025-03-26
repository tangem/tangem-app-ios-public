//
//  CommonExpressRefundedTokenHandler.swift
//  Tangem
//
//

import Foundation
import TangemExpress

class CommonExpressRefundedTokenHandler: ExpressRefundedTokenHandler {
    private let userTokensManager: UserTokensManager
    private let tokenFinder: TokenFinder

    init(userTokensManager: any UserTokensManager, tokenFinder: any TokenFinder) {
        self.userTokensManager = userTokensManager
        self.tokenFinder = tokenFinder
    }

    func handle(expressCurrency: ExpressCurrency) async throws -> TokenItem {
        let tokenItem = try await tokenFinder.findToken(contractAddress: expressCurrency.contractAddress, networkId: expressCurrency.network)
        try userTokensManager.update(itemsToRemove: [], itemsToAdd: [tokenItem])
        return tokenItem
    }
}
