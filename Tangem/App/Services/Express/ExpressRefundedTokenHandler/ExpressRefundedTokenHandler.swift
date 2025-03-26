//
//  ExpressRefundedTokenHandler.swift
//  Tangem
//
//

import Foundation
import TangemExpress

protocol ExpressRefundedTokenHandler {
    func handle(expressCurrency: ExpressCurrency) async throws -> TokenItem
}
