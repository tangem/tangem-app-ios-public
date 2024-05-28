//
//  RateAppAction.swift
//  Tangem
//
//  Created by Andrey Fedorov on 18.01.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

enum RateAppAction {
    case openFeedbackMailWithEmailType(emailType: EmailType)
    case openAppStoreReview
}
