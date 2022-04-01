//
//  TangemApiTarget2.swift
//  Tangem
//
//  Created by Andrey Chukavin on 31.03.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import Moya

#warning("TODO: Merge with `TangemApiTarget`")
enum TangemApiTarget2: TargetType {
    case checkContractAddress(contractAddress: String, networkId: String?)
    
    var baseURL: URL {URL(string: "https://api.tangem-tech.com")!}
    
    var path: String {
        switch self {
        case .checkContractAddress:
            return "/coins/check-address"
        }
    }
    
    var method: Moya.Method { .get }
    
    var task: Task {
        switch self {
        case .checkContractAddress(let contractAddress, let networkId):
            var parameters: [String: Any] = ["contractAddress": contractAddress]
            if let networkId = networkId {
                parameters["networkId"] = networkId
            }
            return .requestParameters(parameters: parameters,
                                      encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        // TODO: Auth
        return nil
    }
}
