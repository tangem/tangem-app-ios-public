//
//  NavigationCoordinatorProvider.swift
//  Tangem
//
//  Created by Alexander Osokin on 11.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct NavigationCoordinatorProvider: NavigationCoordinatorProviding {
    private(set) var coordinator: NavigationCoordinator = .init()
}
