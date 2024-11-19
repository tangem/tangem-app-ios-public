//
//  XCTAssert+.swift
//  BlockchainSdkTests
//
//  Created by Andrey Chukavin on 18.04.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import XCTest

// Taken from WalletCore

func XCTAssertJSONEqual(_ lhs: String, _ rhs: String) {
    do {
        let ljson = try JSONSerialization.jsonObject(with: lhs.data(using: .utf8)!, options: [.fragmentsAllowed])
        let rjson = try JSONSerialization.jsonObject(with: rhs.data(using: .utf8)!, options: [.fragmentsAllowed])

        let lstring = try JSONSerialization.data(withJSONObject: ljson, options: [.sortedKeys, .prettyPrinted])
        let rstring = try JSONSerialization.data(withJSONObject: rjson, options: [.sortedKeys, .prettyPrinted])

        XCTAssertEqual(lstring, rstring, "\(lhs) is not equal to \(rhs)")
    } catch {
        XCTFail(error.localizedDescription)
    }
}
