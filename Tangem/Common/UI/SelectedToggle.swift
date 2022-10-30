//
//  SelectedToggle.swift
//  Tangem
//
//  Created by Sergey Balashov on 30.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

struct SelectedToggle: View {
    @Binding private var isSelected: Bool

    init(isSelected: Binding<Bool>) {
        _isSelected = isSelected
    }

    var body: some View {
        Group {
            if isSelected {
                Assets.check.resizable()
            } else {
                // Need to cover empty place if unchecking
                Rectangle()
                    .fill(Color.clear)
            }
        }
        .frame(width: 20, height: 20)
    }
}
