//
//  WalletConnectV2MessageComposer.swift
//  Tangem
//
//  Created by Andrew Son on 26/12/22.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import WalletConnectSwiftV2

protocol WalletConnectV2MessageComposable {
    func makeMessage(for proposal: Session.Proposal) -> String
}

struct WalletConnectV2MessageComposer { }

extension WalletConnectV2MessageComposer: WalletConnectV2MessageComposable {
    func makeMessage(for proposal: Session.Proposal) -> String {

    }
}
