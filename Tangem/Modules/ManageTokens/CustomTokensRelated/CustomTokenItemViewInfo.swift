//
//  CustomTokenItemViewInfo.swift
//  Tangem
//
//

import Foundation

struct CustomTokenItemViewInfo: Hashable, Identifiable {
    var id: Int { hashValue }

    let tokenItem: TokenItem
    let iconInfo: TokenIconInfo
    let name: String
    let symbol: String
}
