//
//  SendSummaryStepsRoutable.swift
//  Tangem
//
//

import Foundation

protocol SendSummaryStepsRoutable: AnyObject {
    func summaryStepRequestEditDestination()
    func summaryStepRequestEditAmount()
    func summaryStepRequestEditFee()
    func summaryStepRequestEditValidators()
}
