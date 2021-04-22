//
//  EstimateFeeTarget.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 07.04.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation
import Moya

enum EstimateFeeTarget: TargetType {
    case minimal
    case normal
    case priority
    
    var baseURL: URL {
        return URL(string: "https://estimatefee.com")!
    }
    
    var path: String {
        switch self {
        case .minimal:
            return "/n/6"
        case .normal:
            return "/n/3"
        case .priority:
            return "/n/2"
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
}
