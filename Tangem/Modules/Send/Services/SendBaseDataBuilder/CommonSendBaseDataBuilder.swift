//
//  CommonSendBaseDataBuilder.swift
//  TangemApp
//
//

import Foundation
import BlockchainSdk

protocol SendBaseDataBuilderInput {
    var bsdkAmount: BSDKAmount? { get }
    var bsdkFee: Fee? { get }
    var isFeeIncluded: Bool { get }
}

struct CommonSendBaseDataBuilder: SendBaseDataBuilder {
    private let input: SendBaseDataBuilderInput
    private let walletModel: WalletModel
    private let emailDataProvider: EmailDataProvider

    init(
        input: SendBaseDataBuilderInput,
        walletModel: WalletModel,
        emailDataProvider: EmailDataProvider
    ) {
        self.input = input
        self.walletModel = walletModel
        self.emailDataProvider = emailDataProvider
    }

    func makeMailData(transaction: BSDKTransaction, error: SendTxError) -> (dataCollector: EmailDataCollector, recipient: String) {
        let emailDataCollector = SendScreenDataCollector(
            userWalletEmailData: emailDataProvider.emailData,
            walletModel: walletModel,
            fee: transaction.fee.amount,
            destination: transaction.destinationAddress,
            amount: transaction.amount,
            isFeeIncluded: input.isFeeIncluded,
            lastError: .init(error: error),
            stakingAction: nil,
            validator: nil
        )

        let recipient = emailDataProvider.emailConfig?.recipient ?? EmailConfig.default.recipient

        return (dataCollector: emailDataCollector, recipient: recipient)
    }
}
