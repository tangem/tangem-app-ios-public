//
//  GetTotalBalanceMethod.swift
//  TangemVisa
//
//

import Foundation
import TangemSdk
import BlockchainSdk

struct GetTotalBalanceMethod: SmartContractMethod {
    let paymentAccountAddress: String
    private let methodSignature = "balanceOf(address)"

    var prefix: String { SmartContractMethodPrefixCreator().createPrefixForMethod(with: methodSignature) }

    var data: Data {
        let prefixData = Data(hexString: prefix)
        let ownerData = Data(hexString: paymentAccountAddress).leadingZeroPadding(toLength: 32)
        return prefixData + ownerData
    }
}
