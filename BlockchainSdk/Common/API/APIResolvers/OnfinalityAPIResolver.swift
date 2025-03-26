//
//  OnfinalityAPIResolver.swift
//  BlockchainSdk
//
//

import Foundation

struct OnfinalityAPIResolver {
    let config: BlockchainSdkConfig

    func resolve() -> NodeInfo? {
        guard let url = URL(string: "https://bittensor-finney.api.onfinality.io/rpc/") else {
            return nil
        }

        return .init(
            url: url,
            keyInfo: APIHeaderKeyInfo(
                headerName: Constants.onfinalityApiKeyHeaderName,
                headerValue: config.bittensorOnfinalityKey
            )
        )
    }
}
