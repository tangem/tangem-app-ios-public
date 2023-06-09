//
//  OrganizeTokensCoordinator.swift
//  Tangem
//
//  Created by m3g0byt3 on 06.06.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Combine

// TODO: Andrey Fedorov - Add actual implementation (IOS-3461)
class OrganizeTokensCoordinator: CoordinatorObject {
    let dismissAction: Action
    let popToRootAction: ParamsAction<PopToRootOptions>

    // MARK: - Root view model

    @Published private(set) var rootViewModel: OrganizeTokensViewModel?

    // MARK: - Child coordinators

    // MARK: - Child view models

    required init(
        dismissAction: @escaping Action,
        popToRootAction: @escaping ParamsAction<PopToRootOptions>
    ) {
        self.dismissAction = dismissAction
        self.popToRootAction = popToRootAction
    }

    func start(with options: Options) {}
}

// MARK: - Options

extension OrganizeTokensCoordinator {
    enum Options {}
}

// MARK: - OrganizeTokensRoutable

extension OrganizeTokensCoordinator: OrganizeTokensRoutable {}
