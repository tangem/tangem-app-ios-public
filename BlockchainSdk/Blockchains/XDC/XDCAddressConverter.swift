//
//  XDCAddressConverter.swift
//  BlockchainSdk
//
//

import Foundation

struct XDCAddressConverter: EthereumAddressConverter {
    func convertToETHAddress(_ address: String) throws -> String {
        if address.starts(with: Constants.xdcAddressPrefix) {
            let cleaned = String(address.dropFirst(Constants.xdcAddressPrefix.count))
            return cleaned.addHexPrefix()
        }

        return address
    }

    func convertToXDCAddress(_ address: String) -> String {
        if address.hasHexPrefix() {
            return "\(Constants.xdcAddressPrefix)\(address.removeHexPrefix())"
        }

        return address
    }
}

extension XDCAddressConverter {
    enum Constants {
        static let xdcAddressPrefix = "xdc"
    }
}
