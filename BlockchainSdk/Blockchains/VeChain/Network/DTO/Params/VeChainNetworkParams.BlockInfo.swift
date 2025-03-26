//
//  VeChainNetworkParams.BlockInfo.swift
//  BlockchainSdk
//
//

import Foundation

extension VeChainNetworkParams {
    struct BlockInfo {
        enum RequestType {
            case specificWithId(String)
            case specificWithNumber(UInt)
            case latest
            case latestFinalized
        }

        let requestType: RequestType
        let isExpanded: Bool
    }
}
