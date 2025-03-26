//
//  GetAmountMethod.swift
//  TangemVisa
//
//

import Foundation
import TangemSdk
import BlockchainSdk

struct GetAmountMethod: SmartContractMethod {
    let amountType: AmountType

    var prefix: String {
        SmartContractMethodPrefixCreator().createPrefixForMethod(with: amountType.rawValue)
    }

    var data: Data {
        let prefixData = Data(hexString: prefix)
        return prefixData.trailingZeroPadding(toLength: 32)
    }
}

extension GetAmountMethod {
    enum AmountType: String {
        case verifiedBalance = "verifiedBalance()"
        case availableForPayment = "availableForPayment()"
        case blocked = "blockedAmount()"
        case debt = "debtAmount()"
        case pendingRefund = "pendingRefundTotal()"
        case limits = "limits()"
    }
}
