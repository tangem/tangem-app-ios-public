//
//  SendFeeInputOutput.swift
//  Tangem
//
//

import Foundation
import Combine
import struct BlockchainSdk.Amount

protocol SendFeeInput: AnyObject {
    var selectedFee: SendFee { get }
    var selectedFeePublisher: AnyPublisher<SendFee, Never> { get }
    var feesPublisher: AnyPublisher<[SendFee], Never> { get }
    var cryptoAmountPublisher: AnyPublisher<Decimal, Never> { get }
    var destinationAddressPublisher: AnyPublisher<String?, Never> { get }
}

protocol SendFeeOutput: AnyObject {
    func feeDidChanged(fee: SendFee)
}
