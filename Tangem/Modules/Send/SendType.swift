//
//  SendType.swift
//  Tangem
//
//  Created by Andrey Chukavin on 10.11.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

enum SendType {
    case send
}

extension SendType {
    var steps: [SendStep] {
        switch self {
        case .send:
            return [.amount, .destination, .fee, .summary]
        }
    }
}
