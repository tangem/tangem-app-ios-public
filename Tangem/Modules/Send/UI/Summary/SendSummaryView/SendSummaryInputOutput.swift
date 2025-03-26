//
//  SendSummaryInputOutput.swift
//  Tangem
//
//

import Foundation
import Combine
import BlockchainSdk
import TangemStaking

protocol SendSummaryInput: AnyObject {
    var isReadyToSendPublisher: AnyPublisher<Bool, Never> { get }
    var summaryTransactionDataPublisher: AnyPublisher<SendSummaryTransactionData?, Never> { get }
}

protocol SendSummaryOutput: AnyObject {}

enum SendSummaryTransactionData {
    case send(amount: Decimal, fee: Fee)
    case staking(amount: SendAmount, schedule: RewardScheduleType)
}
