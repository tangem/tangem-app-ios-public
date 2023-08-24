//
//  FetchMore.swift
//  Tangem
//
//  Created by Sergey Balashov on 23.08.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

struct FetchMore: Identifiable {
    let id: String
    let start: () -> Void
}
