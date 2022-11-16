//
//  ReferralPointIcon.swift
//  Tangem
//
//  Created by Andrew Son on 07/11/22.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

struct ReferralPointIcon: View {
    private let icon: Image

    init(icon: Image) {
        self.icon = icon
    }

    var body: some View {
        icon
            .roundedBackground(with: Colors.Button.secondary,
                               padding: 14,
                               radius: 16)
    }
}

struct ReferralPointIcon_Previews: PreviewProvider {
    static var previews: some View {
        ReferralPointIcon(icon: Assets.discount)
    }
}
