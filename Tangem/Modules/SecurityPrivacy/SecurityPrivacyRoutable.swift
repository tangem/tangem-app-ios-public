//
//  SecurityPrivacyRoutable.swift
//  Tangem
//
//  Created by Sergey Balashov on 29.06.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol SecurityPrivacyRoutable: AnyObject {
    func didRequestChangePassword()
    func didRequestSecurityManagement(cardModel: CardViewModel)
    func didRequestTokenSynchronization()
    func didRequestResetSavedCards()
}
