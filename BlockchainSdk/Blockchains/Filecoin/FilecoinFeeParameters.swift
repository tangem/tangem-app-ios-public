//
//  FilecoinFeeParameters.swift
//  BlockchainSdk
//
//

import BigInt

struct FilecoinFeeParameters: FeeParameters {
    let gasLimit: Int64
    let gasFeeCap: BigUInt
    let gasPremium: BigUInt
}
