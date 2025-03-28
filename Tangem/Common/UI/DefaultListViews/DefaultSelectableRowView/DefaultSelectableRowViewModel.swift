//
//  DefaultSelectableRowViewModel.swift
//  Tangem
//
//

import SwiftUI

struct DefaultSelectableRowViewModel<ID: Hashable>: Hashable, Identifiable {
    let id: ID
    let title: String
    let subtitle: String?

    init(id: ID, title: String, subtitle: String?) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
    }
}
