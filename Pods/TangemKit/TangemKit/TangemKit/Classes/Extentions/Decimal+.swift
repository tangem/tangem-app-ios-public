//
//  Decimal+.swift
//  TangemKit
//
//  Created by Alexander Osokin on 26/08/2019.
//  Copyright © 2019 Smart Cash AG. All rights reserved.
//

import Foundation

extension Decimal {
    mutating func round(_ scale: Int) {
        var localCopy = self
        NSDecimalRound(&self, &localCopy, scale, NSDecimalNumber.RoundingMode.plain)
    }
    
    func rounded(_ scale: Int) -> Decimal {
        var result = Decimal()
        var localCopy = self
        NSDecimalRound(&result, &localCopy, scale, NSDecimalNumber.RoundingMode.plain)
        return result
    }
}
