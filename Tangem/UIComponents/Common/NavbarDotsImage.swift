//
//  NavbarDotsImage.swift
//  Tangem
//
//  Created by Andrew Son on 15/06/23.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

struct NavbarDotsImage: View {
    var body: some View {
        Assets.verticalDots.image
            .offset(x: 11)
            .foregroundColor(Colors.Icon.primary1)
    }
}
