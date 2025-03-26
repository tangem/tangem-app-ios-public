//
//  StakingValidatorsInput.swift
//  Tangem
//
//

import Foundation
import Combine
import TangemStaking

protocol StakingValidatorsInput: AnyObject {
    var selectedValidatorPublisher: AnyPublisher<ValidatorInfo, Never> { get }
}

protocol StakingValidatorsOutput: AnyObject {
    func userDidSelected(validator: ValidatorInfo)
}
