//
//  OrganizeWalletModelsAdapter.swift
//  Tangem
//
//  Created by Andrey Fedorov on 01.08.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import Combine

final class OrganizeWalletModelsAdapter<SectionModel> {
    struct Section {
        let model: SectionModel
        let items: [WalletModel]
    }

    private let userTokenListManager: UserTokenListManager

    init(
        userTokenListManager: UserTokenListManager
    ) {
        self.userTokenListManager = userTokenListManager
    }

    /// Reactive API.
    func organizedWalletModels(
        from walletModels: some Publisher<[WalletModel], Never>
    ) -> some Publisher<[Section], Never> {
        // TODO: Andrey Fedorov - Add actual implementation
        return Just([])
    }

    /// Imperative API.
    func organizedWalletModels(
        from walletModels: [WalletModel]
    ) -> [Section] {
        // TODO: Andrey Fedorov - Add actual implementation
        return []
    }
}
