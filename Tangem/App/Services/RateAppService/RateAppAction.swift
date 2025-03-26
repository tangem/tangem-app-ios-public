//
//  RateAppAction.swift
//  Tangem
//
//

import Foundation

/// Service to controller commands.
enum RateAppAction {
    case requestAppRate
    case dismissAppRate
    case openFeedbackMailWithEmailType(emailType: EmailType)
    case openAppStoreReview
}
