//
//  UInt8+.swift
//  TangemKit
//
//  Created by Alexander Osokin on 27.12.2019.
//  Copyright © 2019 Smart Cash AG. All rights reserved.
//

import Foundation

extension UInt8 {
    var asData: Data {
        Data([self])
    }
}
