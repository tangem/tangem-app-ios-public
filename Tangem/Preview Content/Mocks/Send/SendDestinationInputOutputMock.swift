//
//  SendSendDestinationInputMock.swift
//  Tangem
//
//

import SwiftUI
import Combine
import BlockchainSdk

class SendDestinationInputOutputMock: SendDestinationInput, SendDestinationOutput {
    var destinationPublisher: AnyPublisher<SendAddress, Never> { .just(output: .init(value: "", source: .myWallet)) }

    var additionalFieldPublisher: AnyPublisher<SendDestinationAdditionalField, Never> { .just(output: .empty(type: .memo)) }

    func destinationDidChanged(_ address: SendAddress?) {}

    func destinationAdditionalParametersDidChanged(_ type: SendDestinationAdditionalField) {}
}
