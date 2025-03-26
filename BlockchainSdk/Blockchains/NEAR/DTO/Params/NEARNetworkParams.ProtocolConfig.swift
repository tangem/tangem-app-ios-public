//
//  NEARNetworkParams..swift
//  BlockchainSdk
//
//

import Foundation

extension NEARNetworkParams {
    struct ProtocolConfig: Encodable {
        let finality: Finality
    }
}
