//
//  OrganizeTokensListSection.swift
//  Tangem
//
//

import Foundation

typealias OrganizeTokensListSection = SectionModel<OrganizeTokensListSectionViewModel, OrganizeTokensListItemViewModel>

// MARK: - Convenience extensions

extension OrganizeTokensListSection {
    var isDraggable: Bool {
        if case .draggable = model.style {
            return true
        }
        return false
    }
}
