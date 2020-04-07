//
//  UnspentTransaction.swift
//  TangemKit
//
//  Created by Alexander Osokin on 09/08/2019.
//  Copyright © 2019 Smart Cash AG. All rights reserved.
//

import Foundation

struct UnspentTransaction {
    let amount: UInt64
    let outputIndex: Int
    let hash: [UInt8]
    let outputScript: [UInt8]
}
