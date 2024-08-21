//
//  PushNotificationsPermissionManagerStub.swift
//  Tangem
//
//  Created by m3g0byt3 on 01.07.2024.
//  Copyright © 2024 Tangem AG. All rights reserved.
//

import Foundation

struct PushNotificationsPermissionManagerStub: PushNotificationsPermissionManager {
    var canPostponePermissionRequest: Bool { false }

    func allowPermissionRequest() async {}
    func postponePermissionRequest() {}
}
