//
//  BitcoinAddressLabel.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 13.11.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

public enum BitcoinAddressType: String {
    case legacy
    case bech32
    
    public var localizedName: String {
        switch self {
        case .legacy:
            return "address_type_legacy".localized
        case .bech32:
            return "address_type_default".localized
        }
    }
}
