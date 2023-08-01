//
//  BottomSearchableSheetCoordinator.swift
//  Tangem
//
//  Created by Sergey Balashov on 01.08.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

class BottomSearchableSheetCoordinator: ObservableObject {
    @Published var bottomSheet: BottomSheetContainer_Previews.BottomSheetViewModel?

    func toggleItem() {
        if bottomSheet == nil {
            bottomSheet = .init { [weak self] in
                self?.bottomSheet = nil
            }
        } else {
            bottomSheet = nil
        }
    }
}
