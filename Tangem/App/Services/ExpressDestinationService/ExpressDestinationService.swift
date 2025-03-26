//
//  ExpressDestinationService.swift
//  Tangem
//
//

import Foundation

protocol ExpressDestinationService {
    func getDestination(source: WalletModel) async throws -> WalletModel
}

enum ExpressDestinationServiceError: Error {
    case destinationNotFound
}
