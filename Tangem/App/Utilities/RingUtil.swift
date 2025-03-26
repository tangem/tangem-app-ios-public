//
//  RingUtil.swift
//  Tangem
//
//

import Foundation

struct RingUtil {
    func isRing(batchId: String) -> Bool {
        batchId.starts(with: "BA")
    }
}
