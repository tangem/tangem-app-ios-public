//
//  CustomFeeService.swift
//  Tangem
//
//

import Foundation
import Combine
import BlockchainSdk

protocol CustomFeeService: AnyObject {
    func initialSetupCustomFee(_ fee: Fee)
    func inputFieldModels() -> [SendCustomFeeInputFieldModel]

    func setup(input: CustomFeeServiceInput, output: CustomFeeServiceOutput)
}

protocol CustomFeeServiceInput: AnyObject {
    var cryptoAmountPublisher: AnyPublisher<Decimal, Never> { get }
    var destinationAddressPublisher: AnyPublisher<String, Never> { get }
}

protocol CustomFeeServiceOutput: AnyObject {
    // There is no way to push the nil fee. It causes to deselect the `selected fee`
    func customFeeDidChanged(_ customFee: Fee)
}
