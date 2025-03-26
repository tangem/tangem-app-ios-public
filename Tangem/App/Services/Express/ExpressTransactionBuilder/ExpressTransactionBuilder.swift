//
//  ExpressTransactionBuilder.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk
import TangemExpress

protocol ExpressTransactionBuilder {
    func makeTransaction(wallet: WalletModel, data: ExpressTransactionData, fee: Fee) async throws -> BlockchainSdk.Transaction
    func makeApproveTransaction(wallet: WalletModel, data: ApproveTransactionData, fee: Fee) async throws -> BlockchainSdk.Transaction
}
