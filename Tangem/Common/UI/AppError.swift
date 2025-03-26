//
//  AppError.swift
//  Tangem
//
//

import Foundation

enum AppError: Error, LocalizedError {
    case serverUnavailable
    case wrongCardWasTapped

    var errorDescription: String? {
        switch self {
        case .serverUnavailable:
            return Localization.commonServerUnavailable
        case .wrongCardWasTapped:
            return Localization.errorWrongWalletTapped
        }
    }
}
