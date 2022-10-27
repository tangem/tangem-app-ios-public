//
//  ScrollView+.swift
//  Tangem
//
//  Created by Andrey Chukavin on 27.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

extension ScrollView {
    @ViewBuilder
    func scrollDismissesKeyboardCompatibility(enabled: Bool) -> some View {
        if #available(iOS 16.0, *) {
            self
                .scrollDismissesKeyboard(enabled ? .immediately : .never)
        } else {
            self
        }
    }
}
