//
//  OrganizeTokensCoordinator.swift
//  Tangem
//
//  Created by Andrey Fedorov on 06.06.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Combine

final class OrganizeTokensCoordinator: CoordinatorObject {
    let dismissAction: Action
    let popToRootAction: ParamsAction<PopToRootOptions>

    // MARK: - Root view model

    @Published private(set) var rootViewModel: OrganizeTokensViewModel?

    required init(
        dismissAction: @escaping Action,
        popToRootAction: @escaping ParamsAction<PopToRootOptions>
    ) {
        self.dismissAction = dismissAction
        self.popToRootAction = popToRootAction
    }

    func start(with options: Options) {
        // TODO: Andrey Fedorov - Replace with proper initializer
        rootViewModel = OrganizeTokensViewModel(
            coordinator: self,
            sections: OrganizeTokensPreviewProvider().multipleSections()
        )
    }
}

// MARK: - Options

extension OrganizeTokensCoordinator {
    enum Options {
        // TODO: Andrey Fedorov - Remove if custom options aren't used in this flow
        case none
    }
}

// MARK: - OrganizeTokensRoutable protocol conformance

extension OrganizeTokensCoordinator: OrganizeTokensRoutable {
    func didTapCancelButton() {
        dismiss()
    }
}
