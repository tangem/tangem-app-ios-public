//
//  VisaAPIService.swift
//  TangemVisa
//
//

import Foundation

public protocol VisaAPIService {
    func loadHistoryPage(request: VisaTransactionHistoryDTO.APIRequest) async throws -> VisaTransactionHistoryDTO
}
