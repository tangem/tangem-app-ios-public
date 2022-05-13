//
//  TwinsWalletCreationServiceProviding.swift
//  Tangem
//
//  Created by Alexander Osokin on 11.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol TwinsWalletCreationServiceProviding {
    var service: TwinsWalletCreationService { get }
}

private struct TwinsWalletCreationServiceProviderKey: InjectionKey {
    static var currentValue: TwinsWalletCreationServiceProviding = TwinsWalletCreationServiceProvider()
}

extension InjectedValues {
    var twinsWalletCreationServiceProvider: TwinsWalletCreationServiceProviding {
        get { Self[TwinsWalletCreationServiceProviderKey.self] }
        set { Self[TwinsWalletCreationServiceProviderKey.self] = newValue }
    }
}

