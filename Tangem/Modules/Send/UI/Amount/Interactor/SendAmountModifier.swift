//
//  SendAmountModifier.swift
//  TangemApp
//
//

import Foundation
import Combine
import TangemFoundation

protocol SendAmountModifier {
    var modifyingMessagePublisher: AnyPublisher<String?, Never> { get }

    func modify(cryptoAmount: Decimal?) -> Decimal?
}

struct StakingAmountModifier: SendAmountModifier {
    private let tokenItem: TokenItem
    private let actionType: SendFlowActionType

    private var _message: CurrentValueSubject<String?, Never> = .init(nil)

    init(tokenItem: TokenItem, actionType: SendFlowActionType) {
        self.tokenItem = tokenItem
        self.actionType = actionType
    }

    var modifyingMessagePublisher: AnyPublisher<String?, Never> {
        _message.eraseToAnyPublisher()
    }

    func modify(cryptoAmount amount: Decimal?) -> Decimal? {
        guard let crypto = amount, tokenItem.hasToBeRounded else {
            _message.send(.none)
            return amount
        }

        let rounded = crypto.rounded()
        let isFloat = rounded != crypto

        guard isFloat else {
            _message.send(nil)
            return amount
        }

        let message = switch actionType {
        case .unstake: Localization.stakingAmountTronIntegerErrorUnstaking(rounded)
        default: Localization.stakingAmountTronIntegerError(rounded)
        }

        _message.send(message)
        return rounded
    }
}

private extension TokenItem {
    var hasToBeRounded: Bool {
        switch blockchain {
        case .tron: true
        default: false
        }
    }
}
