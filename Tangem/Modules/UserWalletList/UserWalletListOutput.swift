//
//  UserWalletListOutput.swift
//  Tangem
//
//  Created by Andrey Chukavin on 30.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol UserWalletListOutput: AnyObject {
    func openOnboarding(with input: OnboardingInput)
}
