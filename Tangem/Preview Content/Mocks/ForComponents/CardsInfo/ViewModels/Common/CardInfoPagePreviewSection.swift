//
//  CardInfoPagePreviewSection.swift
//  Tangem
//
//

import Foundation

struct CardInfoPagePreviewSection<ID>: Identifiable where ID: Hashable {
    enum SectionItems {
        case warning([CardInfoPageWarningPreviewSectionItem])
        case transaction([CardInfoPageTransactionPreviewSectionItem])
    }

    let id: ID
    let items: SectionItems
}
