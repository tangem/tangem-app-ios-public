//
//  AddressType.swift
//  BlockchainSdk
//
//

import Foundation

public enum AddressType: String, Equatable {
    case `default`
    case legacy

    public var defaultLocalizedName: String {
        switch self {
        case .default:
            return Localization.addressTypeDefault
        case .legacy:
            return Localization.addressTypeLegacy
        }
    }
}

extension AddressType: Comparable {
    public static func < (lhs: AddressType, rhs: AddressType) -> Bool {
        switch (lhs, rhs) {
        case (.default, legacy):
            return true
        default:
            return false
        }
    }
}
