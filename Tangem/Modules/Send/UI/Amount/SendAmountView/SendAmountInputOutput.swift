//
//  SendAmountInputOutput.swift
//  Tangem
//
//

import Foundation
import Combine

protocol SendAmountInput: AnyObject {
    var amount: SendAmount? { get }
    var amountPublisher: AnyPublisher<SendAmount?, Never> { get }
}

protocol SendAmountOutput: AnyObject {
    func amountDidChanged(amount: SendAmount?)
}
