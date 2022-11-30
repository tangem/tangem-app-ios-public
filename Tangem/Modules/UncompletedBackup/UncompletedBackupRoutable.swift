//
//  UncompletedBackupRoutable.swift
//  Tangem
//
//  Created by Alexander Osokin on 22.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol UncompletedBackupRoutable: AnyObject {
    func openOnboardingModal(with input: OnboardingInput)
    func dismiss()
}
