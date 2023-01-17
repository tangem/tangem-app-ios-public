//
//  FixedSpacer.swift
//  Tangem
//
//  Created by Sergey Balashov on 17.01.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

/// Spacer with fixed height
struct FixedSpacer: View {
    let height: CGFloat

    var body: some View {
        Spacer()
            .frame(height: height)
    }
}
