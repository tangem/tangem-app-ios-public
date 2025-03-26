//
//  OrganizeTokensDragAndDropController+AuxiliaryTypes.swift
//  Tangem
//
//

import Foundation

enum OrganizeTokensDragAndDropControllerListViewKind {
    case cell
    case sectionHeader
}

enum OrganizeTokensDragAndDropControllerAutoScrollDirection {
    case top
    case bottom
}

enum OrganizeTokensDragAndDropControllerAutoScrollStatus {
    case active(direction: OrganizeTokensDragAndDropControllerAutoScrollDirection)
    case inactive

    var isActive: Bool {
        if case .active = self {
            return true
        }
        return false
    }
}
