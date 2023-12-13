//
//  MainNotificationsObserver.swift
//  Tangem
//
//  Created by Andrey Fedorov on 07.12.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

protocol MainNotificationsObserver: AnyObject {
    func didChangeNotificationInputs(_ inputs: [NotificationViewInput], forUserWalletWithId userWalletId: UserWalletId)
}
