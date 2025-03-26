//
//  URL+.swift
//  BlockchainSdk
//
//

import Foundation

extension URL {
    var hostOrUnknown: String {
        host ?? "Unknown Host"
    }
}
