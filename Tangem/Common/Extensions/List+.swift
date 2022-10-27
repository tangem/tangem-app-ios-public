//
//  List+.swift
//  Tangem
//
//  Created by Sergey Balashov on 05.08.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

extension List {
    @ViewBuilder func groupedListStyleCompatibility(background: Color) -> some View {
        if #available(iOS 16.0, *) {
            self.listStyle(.insetGrouped)
                .background(background)
                .scrollContentBackground(.hidden)
        } else if #available(iOS 14.0, *) {
            self.listStyle(.insetGrouped)
                .background(background)
        } else {
            self.listStyle(.grouped)
        }
    }
}
