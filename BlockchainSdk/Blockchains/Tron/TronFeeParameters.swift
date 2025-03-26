//
//  TronFeeParameters.swift
//  BlockchainSdk
//
//

import Foundation

public struct TronFeeParameters: FeeParameters {
    public let energySpent: Int
    public let energyFullyCoversFee: Bool
}
