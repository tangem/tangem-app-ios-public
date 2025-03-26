//
//  XRPAccount.swift
//  BigInt
//
//

import Foundation

struct XRPAccount: Codable {
    var address: String
    var secret: String

    init(address: String, secret: String) {
        self.address = address
        self.secret = secret
    }
}
