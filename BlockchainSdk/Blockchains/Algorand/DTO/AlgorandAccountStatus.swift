//
//  AlgorandAccountStatus.swift
//  BlockchainSdk
//
//

import Foundation

enum AlgorandAccountStatus: String, Decodable {
    case offline = "Offline"
    case online = "Online"
    case notParticipating = "NotParticipating"
}
