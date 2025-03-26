//
//  AnalyticsEvent.swift
//  Tangem
//
//

import Foundation

extension Analytics {
    enum CardScanSource {
        case welcome
        case auth
        case mainUnlock
        case settings

        var cardScanButtonEvent: Analytics.Event {
            switch self {
            case .welcome:
                return .introductionProcessButtonScanCard
            case .auth:
                return .buttonCardSignIn
            case .settings:
                return .buttonScanNewCardSettings
            case .mainUnlock:
                return .buttonUnlockWithCardScan
            }
        }

        var cardWasScannedParameterValue: Analytics.ParameterValue {
            switch self {
            case .welcome:
                return .introduction
            case .auth:
                return .signIn
            case .mainUnlock:
                return .main
            case .settings:
                return .settings
            }
        }
    }
}
