//
//  ThenProcessable.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 11.02.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation


protocol ThenProcessable {}

extension ThenProcessable where Self: Any {
    func then(_ block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
}
