//
//  XRPCurrentLedgerInfo.swift
//  BigInt
//
//

import Foundation

struct XRPCurrentLedgerInfo {
    init(index: Int, minFee: Int, maxFee: Int) {
        self.index = index
        self.minFee = minFee
        self.maxFee = maxFee
    }

    var index: Int
    var minFee: Int
    var maxFee: Int
}
