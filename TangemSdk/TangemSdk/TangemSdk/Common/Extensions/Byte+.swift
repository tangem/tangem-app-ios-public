//
//  Byte+.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 25/09/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

public typealias Byte = UInt8

extension UInt8 {
    public func toHex() -> String {
        let temp = self
        return String(format: "%02X", temp)
    }
}
