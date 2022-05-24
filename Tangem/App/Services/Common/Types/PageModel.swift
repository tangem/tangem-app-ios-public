//
//  PageModel.swift
//  Tangem
//
//  Created by Sergey Balashov on 24.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct PageModel: Encodable {
    let limit: Int
    let offset: Int
}
