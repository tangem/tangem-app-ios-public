//
//  Text+.swift
//  Tangem
//
//  Created by Sergey Balashov on 01.08.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

extension Text {
    func style(_ style: TypographyStyle, color: Color) -> Text {
        font(style.font).foregroundColor(color)
    }
}
