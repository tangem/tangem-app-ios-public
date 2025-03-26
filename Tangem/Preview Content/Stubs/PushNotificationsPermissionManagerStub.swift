//
//  PushNotificationsPermissionManagerStub.swift
//  Tangem
//
//

import Foundation

struct PushNotificationsPermissionManagerStub: PushNotificationsPermissionManager {
    var canPostponePermissionRequest: Bool { false }

    func allowPermissionRequest() async {}
    func postponePermissionRequest() {}
}
