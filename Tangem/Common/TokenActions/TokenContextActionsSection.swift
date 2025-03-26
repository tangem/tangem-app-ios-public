//
//  TokenContextActionsSection.swift
//  Tangem
//
//

import Foundation

struct TokenContextActionsSection: Identifiable, Hashable {
    let items: [TokenActionType]

    var id: Int { hashValue }
}
