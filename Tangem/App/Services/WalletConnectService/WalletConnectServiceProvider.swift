//
//  WalletConnectServiceProvider.swift
//  Tangem
//
//  Created by Alexander Osokin on 11.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct WalletConnectServiceProvider: WalletConnectServiceProviding {
    private(set) var service: WalletConnectService = .init(cardScanner: WalletConnectCardScanner())
}
