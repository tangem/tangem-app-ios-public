//
//  DefaultFooterView.swift
//  Tangem
//
//  Created by Sergey Balashov on 26.07.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

struct DefaultFooterView: View {
    let title: String

    var body: some View {
        Text(title)
            .style(.footnote(), color: Colors.Text.tertiary)
    }
}
