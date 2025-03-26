//
//  DefaultToggleRowViewModel.swift
//  Tangem
//
//

import SwiftUI

struct DefaultToggleRowViewModel: Hashable, Identifiable {
    var id: Int { hashValue }

    let title: String
    let isDisabled: Bool
    let isOn: BindingValue<Bool>

    init(title: String, isDisabled: Bool = false, isOn: BindingValue<Bool>) {
        self.title = title
        self.isDisabled = isDisabled
        self.isOn = isOn
    }
}
