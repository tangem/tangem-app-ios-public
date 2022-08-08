//
//  SafariView.swift
//  Tangem
//
//  Created by Andrey Chukavin on 23.03.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {

    }
}
