//
//  WebViewContainerViewModel.swift
//  Tangem
//
//

import SwiftUI

struct WebViewContainerViewModel: Identifiable {
    let id = UUID()
    var url: URL?
    var title: String
    var addLoadingIndicator = false
    var withCloseButton = false
    var withNavigationBar: Bool = true
    var urlActions: [String: (String) -> Void] = [:]
    var contentInset: UIEdgeInsets?
}
