//
//  OrganizeTokensViewModel.swift
//  Tangem
//
//  Created by Andrey Fedorov on 06.06.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Combine
import SwiftUI

final class OrganizeTokensViewModel: ObservableObject {
    let headerViewModel: OrganizeTokensHeaderViewModel

    @Published
    var sections: [OrganizeTokensListSectionViewModel]

    private unowned let coordinator: OrganizeTokensRoutable

    init(
        coordinator: OrganizeTokensRoutable,
        sections: [OrganizeTokensListSectionViewModel]
    ) {
        self.coordinator = coordinator
        self.sections = sections
        headerViewModel = OrganizeTokensHeaderViewModel()
    }

    func onCancelButtonTap() {
        // TODO: Andrey Fedorov - Add actual implementation (IOS-3461)
    }

    func onApplyButtonTap() {
        // TODO: Andrey Fedorov - Add actual implementation (IOS-3461)
    }
}
