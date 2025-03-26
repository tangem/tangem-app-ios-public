//
//  WalletConnectRowViewModel.swift
//  Tangem
//
//

import Foundation

struct WalletConnectRowViewModel: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let action: () -> Void

    init(title: String, subtitle: String, action: @escaping () -> Void) {
        self.title = title
        self.subtitle = subtitle
        self.action = action
    }
}
