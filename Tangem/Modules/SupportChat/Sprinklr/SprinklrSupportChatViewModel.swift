//
//  SprinklrSupportChatViewModel.swift
//  Tangem
//
//

import Foundation

// import SPRMessengerClient
//
// final class SprinklrSupportChatViewModel {
//    @Injected(\.keysManager) private var keysManager: KeysManager
//
//    private var deviceID: String {
//        let id = UIDevice.current.identifierForVendor ?? UUID()
//        return id.uuidString
//    }
//
//    init() {
//        let config = SPRMessengerConfig()
//        config.appId = keysManager.sprinklr.appID
//        config.appKey = "com.sprinklr.messenger.release"
//        config.deviceId = deviceID
//        config.environment = keysManager.sprinklr.environment
//        config.skin = "MODERN"
//        if let languageCode = Locale.current.languageCode {
//            config.locale = languageCode
//        }
//        SPRMessenger.takeOff(config)
//    }
// }
