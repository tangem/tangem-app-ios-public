//
//  Device.swift
//  Tangem
//
//  Created by Alexander Osokin on 27.01.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct Device {
    static var isIOS13: Bool {
        if #available(iOS 14.0, *) {
            return false
        } else {
            return true
        }
    }
}
