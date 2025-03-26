//
//  ExpressProviderType.swift
//  TangemExpress
//
//

import Foundation

public enum ExpressProviderType: String, Hashable, Decodable {
    case dex
    case cex
    case dexBridge = "dex-bridge"
}
