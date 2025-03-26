//
//  AdaliteBaseResponseDTO.swift
//  BlockchainSdk
//
//

import Foundation

struct AdaliteBaseResponseDTO<Left: Decodable, Right: Decodable>: Decodable {
    let right: Right?
    let left: Left?

    enum CodingKeys: String, CodingKey {
        case right = "Right"
        case left = "Left"
    }
}
