//
//  ExpressRefundedTokenHandlerMock.swift
//  Tangem
//
//

import Foundation
import TangemExpress

struct ExpressRefundedTokenHandlerMock: ExpressRefundedTokenHandler {
    func handle(expressCurrency: ExpressCurrency) async throws -> TokenItem {
        return .blockchain(.init(.polygon(testnet: false), derivationPath: nil))
    }
}
