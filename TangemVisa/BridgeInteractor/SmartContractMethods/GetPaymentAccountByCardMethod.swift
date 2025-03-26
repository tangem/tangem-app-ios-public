//
//  GetPaymentAccountByCardMethod.swift
//  TangemVisa
//
//

import Foundation
import TangemSdk
import BlockchainSdk

struct GetPaymentAccountByCardMethod: SmartContractMethod {
    let cardWalletAddress: String
    private let methodSignature = "paymentAccountByCard(address)"

    var prefix: String {
        SmartContractMethodPrefixCreator().createPrefixForMethod(with: methodSignature)
    }

    var data: Data {
        let prefixData = Data(hexString: prefix)
        let ownerData = Data(hexString: cardWalletAddress).leadingZeroPadding(toLength: 32)
        return prefixData + ownerData
    }
}
