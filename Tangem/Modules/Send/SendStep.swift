//
//  SendStep.swift
//  Tangem
//
//  Created by Andrey Chukavin on 30.10.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation

enum SendStep {
    case amount
    case destination
    case fee
    case summary
    case finish
}

extension SendStep {
    #warning("L10n")
    var name: String? {
        switch self {
        case .amount:
            return "Send"
        case .destination:
            return "Recipient"
        case .fee:
            return "Speed and Fee"
        case .summary:
            return "Send"
        case .finish:
            return nil
        }
    }

    var hasNavigationButtons: Bool {
        switch self {
        case .amount, .destination, .fee:
            return true
        case .summary, .finish:
            return false
        }
    }
}
