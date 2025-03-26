//
//  SolanaStakeKitTransactionHelper.swift
//  BlockchainSdk
//
//

import Foundation

class SolanaStakeKitTransactionHelper {
    func prepareForSign(_ unsignedData: String) -> Data {
        return Data(hexString: unsignedData).dropFirst(Constants.signaturePlaceholderPrefixLength)
    }

    func prepareForSend(_ unsignedData: String, signature: Data) -> String {
        let prepared = prepareForSign(unsignedData)
        let dataToSign = Data([UInt8(1)] + signature + prepared)
        return dataToSign.base64EncodedString()
    }
}

private extension SolanaStakeKitTransactionHelper {
    enum Constants {
        static let signaturePlaceholderPrefixLength = 65
    }
}
