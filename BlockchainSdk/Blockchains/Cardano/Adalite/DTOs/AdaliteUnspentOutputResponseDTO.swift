//
//  AdaliteUnspentOutputResponseDTO.swift
//  BlockchainSdk
//
//

import Foundation

struct AdaliteUnspentOutputResponseDTO: Decodable {
    let cuId: String
    let tag: String
    let cuCoins: CuCoins
    let cuAddress: String
    let cuOutIndex: UInt64
}

extension AdaliteUnspentOutputResponseDTO {
    struct CuCoins: Decodable {
        let getCoin: String
        let getTokens: [AdaliteTokenDTO]
    }
}
