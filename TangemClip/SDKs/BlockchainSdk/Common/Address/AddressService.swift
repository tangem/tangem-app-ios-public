//
//  AddressService.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 20.04.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

public protocol AddressService: MultipleAddressProvider {
    func makeAddress(from walletPublicKey: Data) -> String
    func validate(_ address: String) -> Bool
}


extension AddressService {
    public func makeAddresses(from walletPublicKey: Data) -> [Address] {
        let address = makeAddress(from: walletPublicKey)
        return [PlainAddress(value: address)]
    }
}
