//
//  UserWalletConfigFeatures.swift
//  Tangem
//
//  Created by Alexander Osokin on 29.07.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

enum UserWalletFeature: Int { //TODO: Add comments
    case accessCode
    case passcode
    case longTap
    case longHashes
    case backup
    case twinning
    
    case signedHashesCounter
    
    case send
    case receive
    
    case topup
    case withdrawal
    case exchange
    case staking
    
    case walletConnect
    case multiCurrency
    
    case tokensSearch
    case resetToFactory
    case hdWallets
    case onlineImage
}

extension UserWalletFeature {
    enum Availability {
        case available
        case unavailable //Hidden
        case disabled(localizedReason: String? = nil)

        var disabledLocalizedReason: String? {
            if case let .disabled(reason) = self, let reason = reason {
                return reason
            }

            return nil
        }

        var isAvailable: Bool {
            if case .available = self {
                return true
            }

            return false
        }

        var isHidden: Bool {
            if case .unavailable = self {
                return true
            }

            return false
        }
    }
}
