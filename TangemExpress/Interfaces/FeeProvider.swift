//
//  FeeProvider.swift
//  TangemExpress
//
//

import Foundation

public protocol FeeProvider {
    func estimatedFee(amount: Decimal) async throws -> ExpressFee
    func estimatedFee(estimatedGasLimit: Int) async throws -> Fee
    func getFee(amount: ExpressAmount, destination: String) async throws -> ExpressFee
}

public enum ExpressAmount {
    /// Usual transfer for CEX
    case transfer(amount: Decimal)

    /// For `DEX` / `DEX/Bridge` operations
    case dex(txValue: Decimal, txData: Data)
}

public enum ExpressFee {
    case single(Fee)
    case double(market: Fee, fast: Fee)

    var fastest: Fee {
        switch self {
        case .single(let fee):
            return fee
        case .double(_, let fast):
            return fast
        }
    }
}
