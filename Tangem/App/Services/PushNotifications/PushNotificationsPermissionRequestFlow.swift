//
//  PushNotificationsPermissionRequestFlow.swift
//  Tangem
//
//

import Foundation

enum PushNotificationsPermissionRequestFlow {
    /// User starts the app for the first time, accept TOS, etc.
    case welcomeOnboarding
    /// User adds first wallet to the app, performs backup, etc.
    case walletOnboarding
    /// User completed all onboarding procedures and using app normally.
    case afterLogin
}
