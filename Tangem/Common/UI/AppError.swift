//
//  AppError.swift
//  Tangem
//
//  Created by Andrey Chukavin on 08.04.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

enum AppError: Error, LocalizedError {
    case serverUnavailable

    var errorDescription: String? {
        switch self {
        case .serverUnavailable:
            return "common_server_unavailable".localized
        }
    }
}
