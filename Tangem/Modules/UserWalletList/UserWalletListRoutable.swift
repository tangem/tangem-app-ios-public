//
//  UserWalletListRoutable.swift
//  Tangem
//
//  Created by Andrey Chukavin on 29.07.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol UserWalletListRoutable: AnyObject {
    func dismiss()
    func openOnboarding(with input: OnboardingInput)
    func openMail(with dataCollector: EmailDataCollector, emailType: EmailType, recipient: String)
}
