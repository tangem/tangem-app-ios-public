//
//  Text+.swift
//  Tangem
//
//  Created by Sergey Balashov on 01.08.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

extension TextField {
    func style(_ font: Font, color: Color) -> some View {
        self.font(font).foregroundColor(color)
    }
}
