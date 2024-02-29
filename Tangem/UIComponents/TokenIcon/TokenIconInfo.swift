//
//  TokenIcon.swift
//  Tangem
//
//  Created by Sergey Balashov on 17.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

// TODO: Remove the name from here. It doesn't used in the TokenIcon
struct TokenIconInfo: Hashable {
    let name: String
    let blockchainIconName: String?
    let imageURL: URL?
    let isCustom: Bool
    let customTokenColor: Color?
}
