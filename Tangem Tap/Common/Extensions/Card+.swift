//
//  Card+.swift
//  Tangem Tap
//
//  Created by Andrew Son on 27/12/20.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import TangemSdk

extension Card {
    var canSign: Bool {
        let isPin2Default = self.isPin2Default ?? true
        let hasSmartSecurityDelay = settingsMask?.contains(.smartSecurityDelay) ?? false
        let canSkipSD = hasSmartSecurityDelay && !isPin2Default
        
        if let fw = firmwareVersionValue, fw < 2.28 {
            if let securityDelay = pauseBeforePin2, securityDelay > 1500 && !canSkipSD {
                return false
            }
        }
        
        return true
    }
}

