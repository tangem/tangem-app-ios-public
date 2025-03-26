//
//  ModalSheetPreferenceKey.swift
//  Tangem
//
//

import SwiftUI

struct ModalSheetPreferenceKey: PreferenceKey {
    static var defaultValue: Bool = false

    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

extension View {
    func updateModalPresentation(to newValue: Bool) -> some View {
        preference(key: ModalSheetPreferenceKey.self, value: newValue)
    }
}
