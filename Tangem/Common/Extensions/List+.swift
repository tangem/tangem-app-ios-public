//
//  List+.swift
//  Tangem
//
//  Created by Sergey Balashov on 05.08.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

extension List {
    @ViewBuilder func groupedListStyleCompact() -> some View {
        if #available(iOS 14.0, *) {
            self.listStyle(.insetGrouped)
        } else {
            self.listStyle(.grouped)
        }
    }
}
