//
//  WalletOnboardingRoutable.swift
//  Tangem
//
//  Created by Alexander Osokin on 16.06.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol WalletOnboardingRoutable: OnboardingRoutable {
    func openAccessCodeView(callback: @escaping (String) -> Void)
}
