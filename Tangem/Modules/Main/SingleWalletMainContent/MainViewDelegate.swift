//
//  MainViewDelegate.swift
//  Tangem
//
//  Created by Andrey Chukavin on 26.09.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

// TODO: Andrey Fedorov - Rename into SingleWalletMainContentDelegate
protocol MainViewDelegate: MainNotificationsObserver {
    func present(actionSheet: ActionSheetBinder)
}
