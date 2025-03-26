//
//  BlockchairAddressBlockMapper.swift
//  BlockchainSdk
//
//

import Foundation
import SwiftyJSON

protocol BlockchairAddressBlockMapper {
    func mapAddressBlock(_ address: String, json: JSON) -> JSON
}

extension BlockchairAddressBlockMapper {
    func mapAddressBlock(_ address: String, json: JSON) -> JSON {
        let data = json["data"]
        let dictionary = data.dictionaryValue
        if dictionary.keys.contains(address) {
            return data["\(address)"]
        }

        let lowercasedAddress = address.lowercased()
        if dictionary.keys.contains(lowercasedAddress) {
            return data["\(lowercasedAddress)"]
        }

        return json
    }
}
