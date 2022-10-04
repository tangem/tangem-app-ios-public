//
//  SaltPayRegistratorProviding.swift
//  Tangem
//
//  Created by Alexander Osokin on 04.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol SaltPayRegistratorProviding {
    var registrator: SaltPayRegistrator? { get }

    func initialize(cardId: String, walletPublicKey: Data, cardPublicKey: Data) throws
}

private struct SaltPayRegistratorProviderKey: InjectionKey {
    static var currentValue: SaltPayRegistratorProviding = SaltPayRegistratorProvider()
}

extension InjectedValues {
    var saletPayRegistratorProvider: SaltPayRegistratorProviding {
        get { Self[SaltPayRegistratorProviderKey.self] }
        set { Self[SaltPayRegistratorProviderKey.self] = newValue }
    }
}
