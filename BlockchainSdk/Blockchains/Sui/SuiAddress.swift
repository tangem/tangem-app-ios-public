//
//  SuiAddress.swift
//  BlockchainSdk
//
//

import Foundation

struct SuiAddress {
    let formattedString: String
    let curveID: SUIUtils.EllipticCurveID

    init(pubKey data: Data, curveID: SUIUtils.EllipticCurveID = .ed25519) throws {
        let payload = curveID.uint8.data + data

        guard let hashed = payload.hashBlake2b(outputLength: 32) else {
            throw WalletCoreAddressService.TWError.makeAddressFailed
        }

        let string = hashed.hexString.addHexPrefix()

        formattedString = string
        self.curveID = curveID
    }

    init(hex string: String, curveID: SUIUtils.EllipticCurveID) throws {
        formattedString = string.hasHexPrefix() ? string : string.addHexPrefix()
        self.curveID = curveID
    }
}
