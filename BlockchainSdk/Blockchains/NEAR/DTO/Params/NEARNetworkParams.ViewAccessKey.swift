//
//  NEARNetworkParams.ViewAccessKey.swift
//  BlockchainSdk
//
//

import Foundation

extension NEARNetworkParams {
    struct ViewAccessKey: Encodable {
        enum RequestType: String, Encodable {
            case viewAccessKey = "view_access_key"
        }

        let requestType: RequestType
        let finality: Finality
        let accountId: String
        /// Expected format is "ed25519:%public_key% (where %public_key% is a Base58 encoded string)".
        let publicKey: String
    }
}
