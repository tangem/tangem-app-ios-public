//
//  WalletConnectUIBuilder.swift
//  Tangem Tap
//
//  Created by Andrew Son on 08/04/21.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

enum WalletConnectEvent {
    case establishSession
}

class WalletConnectUIBuilder {
    static func makeUI(for event: WalletConnectEvent) -> UIViewController {
        let vc: UIViewController
        switch event {
        case .establishSession:
            vc = UIHostingController(rootView: Text("Establish session"))
        }
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .automatic
        return vc
    }
}
