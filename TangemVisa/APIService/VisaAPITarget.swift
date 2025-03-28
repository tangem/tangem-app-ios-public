//
//  APITarget.swift
//  TangemVisa
//
//

import Foundation
import Moya

struct VisaAPITarget: TargetType {
    let isTestnet: Bool
    let target: Target
    let additionalHeaders: [String: String]

    var baseURL: URL {
        if isTestnet {
            return URL(string: "https://devpayapi.tangem-tech.com/api/v1/")!
        }

        return URL(string: "https://payapi.tangem-tech.com/api/v1/")!
    }

    var path: String {
        switch target {
        case .transactionHistory:
            return "transaction"
        }
    }

    var method: Moya.Method {
        switch target {
        case .transactionHistory:
            return .get
        }
    }

    var task: Moya.Task {
        switch target {
        case .transactionHistory(let request):
            return .requestParameters(parameters: [
                ParameterKey.cardPublicKey.rawValue: request.cardPublicKey,
                ParameterKey.limit.rawValue: request.numberOfItems,
                ParameterKey.offset.rawValue: request.offset,
            ], encoding: URLEncoding())
        }
    }

    var headers: [String: String]? {
        additionalHeaders
    }
}

extension VisaAPITarget {
    enum Target {
        case transactionHistory(request: VisaTransactionHistoryDTO.APIRequest)
    }

    enum ParameterKey: String {
        case cardPublicKey = "card_public_key"
        case limit
        case offset
    }
}
