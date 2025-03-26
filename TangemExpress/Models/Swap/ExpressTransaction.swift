//
//  ExpressTransaction.swift
//  TangemExpress
//
//

import Foundation

public struct ExpressTransaction {
    public let providerId: ExpressProvider.Id
    public let externalStatus: ExpressTransactionStatus
    public let refundedCurrency: ExpressCurrency?
}
