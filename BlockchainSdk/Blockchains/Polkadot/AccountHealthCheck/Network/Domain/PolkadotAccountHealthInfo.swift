//
//  PolkadotAccountHealthInfo.swift
//  BlockchainSdk
//
//

import Foundation

public enum PolkadotAccountHealthInfo {
    case nonExistentAccount
    case existingAccount(extrinsicCount: Int, nonceCount: Int)
}
