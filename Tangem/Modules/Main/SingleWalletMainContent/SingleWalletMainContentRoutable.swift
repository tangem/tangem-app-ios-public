//
//  SingleWalletMainContentRoutable.swift
//  Tangem
//
//  Created by Andrey Fedorov on 19.01.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

protocol SingleWalletMainContentRoutable: AnyObject {
    func openMail(with dataCollector: EmailDataCollector, emailType: EmailType, recipient: String)
}
