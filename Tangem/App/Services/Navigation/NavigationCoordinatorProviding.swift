//
//  NavigationCoordinatorProviding.swift
//  Tangem
//
//  Created by Alexander Osokin on 11.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol NavigationCoordinatorProviding { //TODO: Refactor and remove
    var coordinator: NavigationCoordinator { get }
}
 
private struct NavigationCoordinatorProviderKey: InjectionKey {
    static var currentValue: NavigationCoordinatorProviding = NavigationCoordinatorProvider()
}

extension InjectedValues {
    var navigationCoordinatorProvider: NavigationCoordinatorProviding {
        get { Self[NavigationCoordinatorProviderKey.self] }
        set { Self[NavigationCoordinatorProviderKey.self] = newValue }
    }
}

