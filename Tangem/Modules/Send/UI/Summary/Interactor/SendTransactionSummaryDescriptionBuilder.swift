//
//  SendTransactionSummaryDescriptionBuilder.swift
//  Tangem
//
//

import Foundation

protocol SendTransactionSummaryDescriptionBuilder {
    func makeDescription(transactionType: SendSummaryTransactionData) -> String?
}
