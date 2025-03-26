//
//  SendFee.swift
//  Tangem
//
//

import Foundation
import struct BlockchainSdk.Fee

struct SendFee: Hashable {
    let option: FeeOption
    let value: LoadingValue<Fee>
}
