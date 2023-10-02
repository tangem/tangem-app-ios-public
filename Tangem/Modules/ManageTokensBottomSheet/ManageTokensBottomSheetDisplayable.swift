//
//  ManageTokensBottomSheetDisplayable.swift
//  Tangem
//
//  Created by Andrey Fedorov on 02.10.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

protocol ManageTokensBottomSheetDisplayable: AnyObject {
    func coordinator(
        _ coordinator: any CoordinatorObject,
        wantsToShowManageTokensBottomSheetWithViewModel viewModel: ManageTokensBottomSheetViewModel
    )

    func coordinatorWantsToHideManageTokensBottomSheet(
        _ coordinator: any CoordinatorObject
    )
}
