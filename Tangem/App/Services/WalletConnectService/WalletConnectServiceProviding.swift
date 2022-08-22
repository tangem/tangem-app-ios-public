//
//  WalletConnectServiceProviding.swift
//  Tangem
//
//  Created by Alexander Osokin on 11.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol WalletConnectServiceProviding: Initializable {
    var service: WalletConnectService { get }
}

private struct WalletConnectServiceProviderKey: InjectionKey {
    static var currentValue: WalletConnectServiceProviding = WalletConnectServiceProvider()
}

extension InjectedValues {
    var walletConnectServiceProvider: WalletConnectServiceProviding {
        get { Self[WalletConnectServiceProviderKey.self] }
        set { Self[WalletConnectServiceProviderKey.self] = newValue }
    }
}
