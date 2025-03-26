//
//  PushNotificationsPermissionManager.swift
//  Tangem
//
//

import Foundation

protocol PushNotificationsPermissionManager {
    func allowPermissionRequest() async
    func postponePermissionRequest()
}
