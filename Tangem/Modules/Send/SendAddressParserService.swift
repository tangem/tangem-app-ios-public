//
//  SendAddressParserService.swift
//  Tangem
//
//  Created by Andrey Chukavin on 30.01.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import BlockchainSdk

struct SendAddressParserService {
    let addressService: AddressService

    func parse(address: String, additionalField: String) -> (parsedAddress: String, parsedAdditionalField: String?) {
        if let addressParser = addressService as? AddressParser {
            return addressParser.parse(address: address, additionalField: additionalField)
        } else {
            return (address, additionalField)
        }
    }
}
