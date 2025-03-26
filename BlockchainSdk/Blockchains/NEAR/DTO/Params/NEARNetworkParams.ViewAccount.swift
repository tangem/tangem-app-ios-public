//
//  NEARNetworkParams.ViewAccount.swift
//  BlockchainSdk
//
//

import Foundation

extension NEARNetworkParams {
    struct ViewAccount: Encodable {
        enum RequestType: String, Encodable {
            case viewAccount = "view_account"
        }

        let requestType: RequestType
        let finality: Finality
        let accountId: String
    }
}
