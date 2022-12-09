//
//  TokenIconURLBuilding.swift
//  Tangem
//
//  Created by Sergey Balashov on 06.12.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol TokenIconURLBuilding {
    func iconURL(id: String, size: TokenURLIconSize) -> URL
}
