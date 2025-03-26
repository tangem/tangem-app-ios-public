//
//  APIListDTO.swift
//  Tangem
//
//

import Foundation
import BlockchainSdk

typealias APIListDTO = [String: [APIInfoDTO]]

struct APIInfoDTO: Decodable {
    let type: String
    let name: String?
    let url: String?
}
