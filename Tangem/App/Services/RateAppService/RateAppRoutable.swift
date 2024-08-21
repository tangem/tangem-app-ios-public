//
//  RateAppRoutable.swift
//  Tangem
//
//  Created by Andrey Fedorov on 22.01.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

protocol RateAppRoutable: AnyObject {
    func openMail(with dataCollector: EmailDataCollector, emailType: EmailType, recipient: String)
    func openAppStoreReview()
}
