//
//  SendFeeInputOutputMock.swift
//  Tangem
//
//

import SwiftUI
import Combine
import BlockchainSdk

class SendFeeInputMock: SendFeeInput {
    var selectedFee: SendFee? { SendFee(option: .market, value: .loaded(.init(.init(with: .polygon(testnet: false), value: 0.1)))) }

    var selectedFeePublisher: AnyPublisher<SendFee?, Never> { .just(output: selectedFee) }

    var cryptoAmountPublisher: AnyPublisher<BlockchainSdk.Amount, Never> { .just(output: .init(with: .polygon(testnet: false), value: 1)) }

    var destinationAddressPublisher: AnyPublisher<String?, Never> { .just(output: "0x") }
}

class SendFeeOutputMock: SendFeeOutput {
    func feeDidChanged(fee: SendFee) {}
}
