//
//  ScrollView+.swift
//  Tangem
//
//

import SwiftUI

extension View {
    @ViewBuilder
    func scrollDismissesKeyboardCompat(_ type: ScrollDismissesKeyboardCompatType) -> some View {
        if #available(iOS 16.0, *) {
            switch type {
            case .interactively:
                scrollDismissesKeyboard(.interactively)
            case .immediately:
                scrollDismissesKeyboard(.immediately)
            case .never:
                scrollDismissesKeyboard(.never)
            }
        } else {
            switch type {
            case .interactively, .immediately:
                onTapGesture {
                    UIApplication.shared.endEditing()
                }
            case .never:
                self
            }
        }
    }
}

enum ScrollDismissesKeyboardCompatType {
    case interactively
    case immediately
    case never
}
