//
//  OrganizeTokensListSectionViewModel.swift
//  Tangem
//
//

import Foundation

struct OrganizeTokensListSectionViewModel: Hashable, Identifiable {
    enum SectionStyle: Hashable {
        case invisible
        case fixed(title: String)
        case draggable(title: String)
    }

    let id: AnyHashable
    let style: SectionStyle
}
