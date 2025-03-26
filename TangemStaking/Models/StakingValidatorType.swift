//
//  StakingValidatorType.swift
//  TangemApp
//
//

public enum StakingValidatorType: Hashable {
    /// In the case when there is a validator on the balance
    case validator(ValidatorInfo)

    /// In the case when there is a validator on the balance that has been disabled
    case disabled

    /// In the case when the balance / action doesn't have a validator
    case empty

    public var validator: ValidatorInfo? {
        switch self {
        case .validator(let validatorInfo): validatorInfo
        case .disabled, .empty: nil
        }
    }
}
