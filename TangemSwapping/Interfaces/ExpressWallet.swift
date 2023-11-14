//
//  ExpressWallet.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 09.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

public protocol ExpressWallet {
    var currency: ExpressCurrency { get }
    var address: String { get }
}

public extension ExpressWallet {
    var contractAddress: String {
        currency.contractAddress
    }

    var network: String {
        currency.network
    }

    var isToken: Bool {
        contractAddress != ExpressConstants.coinContractAddress
    }
}
