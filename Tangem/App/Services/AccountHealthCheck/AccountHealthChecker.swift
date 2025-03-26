//
//  AccountHealthChecker.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

protocol AccountHealthChecker: Initializable {
    func performAccountCheckIfNeeded(_ account: String)
}

// MARK: - Dependency injection

extension InjectedValues {
    struct AccountHealthCheckerKey: InjectionKey {
        static var currentValue: AccountHealthChecker = PolkadotAccountHealthChecker(
            networkService: SubscanPolkadotAccountHealthNetworkService(
                isTestnet: AppEnvironment.current.isTestnet,
                pageSize: 100
            )
        )
    }

    var accountHealthChecker: AccountHealthChecker {
        get { Self[AccountHealthCheckerKey.self] }
        set { Self[AccountHealthCheckerKey.self] = newValue }
    }
}

// MARK: - PolkadotAccountHealthNetworkService protocol conformance

extension SubscanPolkadotAccountHealthNetworkService: PolkadotAccountHealthNetworkService {}
