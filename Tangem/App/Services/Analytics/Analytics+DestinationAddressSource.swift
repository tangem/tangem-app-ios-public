//
//  Analytics+DestinationAddressSource.swift
//  Tangem
//
//

import Foundation

extension Analytics {
    enum DestinationAddressSource {
        case qrCode
        case pasteButton
        case pasteMenu
        case myWallet
        case recentAddress
        case textField
        case sellProvider

        var parameterValue: Analytics.ParameterValue? {
            switch self {
            case .pasteButton:
                return .destinationAddressSourcePasteButton
            case .pasteMenu:
                return .destinationAddressSourcePastePopup
            case .qrCode:
                return .destinationAddressSourceQrCode
            case .myWallet:
                return .destinationAddressSourceMyWallet
            case .recentAddress:
                return .destinationAddressSourceRecentAddress
            case .textField, .sellProvider:
                return nil
            }
        }
    }
}
