//
//  TogglableGroupButtonWithIcon.swift
//  Tangem
//
//  Created by skibinalexander on 14.05.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

// TODO: - Need continue task for IOS-3627 (append bindings), after token list redesign will be done
public struct TogglableGroupButtonWithIcon: View {
    public var body: some View {
        HStack {
            byBalanceButton

            groupButton
        }
    }

    private var byBalanceButton: some View {
        FlexyButtonWithLeadingIcon(
            title: Localization.buttonTitleByBalance,
            icon: Assets.byBalance.image
        ) {}
    }

    private var groupButton: some View {
        FlexyButtonWithLeadingIcon(
            title: Localization.buttonTitleGroup,
            icon: Assets.group.image
        ) {}
    }
}

public struct TogglableGroupButtonWithIcon_Previews: PreviewProvider {
    public static var previews: some View {
        TogglableGroupButtonWithIcon()
    }
}
