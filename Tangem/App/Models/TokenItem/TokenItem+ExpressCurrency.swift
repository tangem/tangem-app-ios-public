//
//  TokenItem+ExpressCurrency.swift
//  Tangem
//
//

import Foundation
import TangemExpress

extension TokenItem {
    var expressCurrency: TangemExpress.ExpressCurrency {
        switch self {
        case .blockchain:
            return TangemExpress.ExpressCurrency(
                // Fixed constant value for the main token contract address
                contractAddress: ExpressConstants.coinContractAddress,
                network: networkId
            )
        case .token(let token, _):
            return TangemExpress.ExpressCurrency(
                contractAddress: token.contractAddress,
                network: networkId
            )
        }
    }
}
