//
//  ExpressAvailableProvider.swift
//  TangemSwapping
//
//  Created by Sergey Balashov on 11.12.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

public class ExpressAvailableProvider {
    public let provider: ExpressProvider
    public var isBest: Bool
    public let manager: ExpressProviderManager

    init(provider: ExpressProvider, isBest: Bool, manager: ExpressProviderManager) {
        self.provider = provider
        self.isBest = isBest
        self.manager = manager
    }

    public func getState() async -> ExpressProviderManagerState {
        await manager.getState()
    }
}
