//
//  SendAmountInputMock.swift
//  Tangem
//
//

import SwiftUI
import Combine

class SendAmountInputOutputMock: SendAmountInput, SendAmountOutput {
    var amount: SendAmount? { .none }
    var amountPublisher: AnyPublisher<SendAmount?, Never> { .just(output: amount) }

    func amountDidChanged(amount: SendAmount?) {}
}
