//
//  AppConfig.swift
//  Tangem Tap
//
//  Created by Alexander Osokin on 01.09.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation
import FirebaseRemoteConfig

struct AppConfig {
    var coinMarketCapApiKey: String {
		keysManager.keys.coinMarketCapKey
    }
    
    var moonPayApiKey: String {
		keysManager.keys.moonPayApiKey
    }
    
    var moonPaySecretApiKey: String {
		keysManager.keys.moonPayApiSecretKey
    }
    
    var isEnableMoonPay: Bool {
		remoteConfig.features.isTopUpEnabled
    }
    
    var isEnablePayID: Bool {
		remoteConfig.features.isWalletPayIdEnabled
	}
	
	private let remoteConfig = RemoteConfigManager()
	private let keysManager: KeysManager!
    
    init() {
		keysManager = try? KeysManager()
    }
}
