//
//  WalletConnectServiceProvider.swift
//  Tangem
//
//  Created by Alexander Osokin on 11.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

class WalletConnectServiceProvider: WalletConnectServiceProviding {
    private(set) var service: WalletConnectService? = nil

    func initialize(with cardModel: CardViewModel) {
        service = .init(with: cardModel)
    }

    func reset() {
        service = nil
    }
}
