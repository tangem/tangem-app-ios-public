//
//  Array+.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 30/09/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

extension Array where Element == Tlv {
    /// Convinience extension for TLV array serialization
    var bytes: Data {
        return Data(self.reduce([], { $0 + $1.bytes }))
    }
}
