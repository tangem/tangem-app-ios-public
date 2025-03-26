//
//  KoinosResourceLimitData.swift
//  BlockchainSdk
//
//

import BigInt

struct KoinosResourceLimitData {
    let diskStorageLimit: BigUInt
    let diskStorageCost: BigUInt
    let networkBandwidthLimit: BigUInt
    let networkBandwidthCost: BigUInt
    let computeBandwidthLimit: BigUInt
    let computeBandwidthCost: BigUInt
}
