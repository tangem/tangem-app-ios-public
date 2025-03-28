//
//  EthereumStakeKitTransactionHelper.swift
//  BlockchainSdk
//
//

import Foundation
import WalletCore
import BigInt

struct EthereumStakeKitTransactionHelper {
    private let transactionBuilder: EthereumTransactionBuilder

    init(transactionBuilder: EthereumTransactionBuilder) {
        self.transactionBuilder = transactionBuilder
    }

    func prepareForSign(_ stakingTransaction: StakeKitTransaction) throws -> Data {
        let input = try buildSigningInput(stakingTransaction: stakingTransaction)
        let preSigningOutput = try transactionBuilder.buildTxCompilerPreSigningOutput(input: input)
        return preSigningOutput.dataHash
    }

    func prepareForSend(
        stakingTransaction: StakeKitTransaction,
        signatureInfo: SignatureInfo
    ) throws -> Data {
        let input = try buildSigningInput(stakingTransaction: stakingTransaction)
        let output = try transactionBuilder.buildSigningOutput(input: input, signatureInfo: signatureInfo)
        return output.encoded
    }

    private func buildSigningInput(
        stakingTransaction: StakeKitTransaction
    ) throws -> EthereumSigningInput {
        guard let compiledTransactionData = stakingTransaction.unsignedData.data(using: .utf8) else {
            throw EthereumTransactionBuilderError.invalidStakingTransaction
        }

        let compiledTransaction = try JSONDecoder()
            .decode(EthereumCompiledTransaction.self, from: compiledTransactionData)

        let coinAmount: BigUInt = compiledTransaction.value.flatMap { BigUInt(Data(hex: $0)) } ?? .zero

        let gasLimit = BigUInt(Data(hex: compiledTransaction.gasLimit))
        guard gasLimit > 0 else {
            throw EthereumTransactionBuilderError.feeParametersNotFound
        }

        let baseFee = compiledTransaction.maxFeePerGas.flatMap { BigUInt(Data(hex: $0)) } ?? .zero
        let priorityFee = compiledTransaction.maxPriorityFeePerGas.flatMap { BigUInt(Data(hex: $0)) } ?? .zero
        let gasPrice = compiledTransaction.gasPrice.flatMap { BigUInt(Data(hex: $0)) } ?? .zero

        let feeParameters: FeeParameters

        if baseFee > 0, priorityFee > 0 {
            feeParameters = EthereumEIP1559FeeParameters(gasLimit: gasLimit, baseFee: baseFee, priorityFee: priorityFee)
        } else if gasPrice > 0 {
            feeParameters = EthereumLegacyFeeParameters(gasLimit: gasLimit, gasPrice: gasPrice)
        } else {
            throw EthereumTransactionBuilderError.feeParametersNotFound
        }

        let data = Data(hex: compiledTransaction.data)

        guard !data.isEmpty else {
            throw EthereumTransactionBuilderError.invalidStakingTransaction
        }

        return try transactionBuilder.buildSigningInput(
            destination: compiledTransaction.to,
            coinAmount: coinAmount,
            fee: Fee(
                stakingTransaction.fee.amount,
                parameters: feeParameters
            ),
            nonce: compiledTransaction.nonce,
            data: data
        )
    }
}

private struct EthereumCompiledTransaction: Decodable {
    let from: String
    let gasLimit: String
    let to: String
    let data: String
    let nonce: Int
    let type: Int
    let maxFeePerGas: String?
    let maxPriorityFeePerGas: String?
    let gasPrice: String?
    let chainId: Int
    let value: String?
}
