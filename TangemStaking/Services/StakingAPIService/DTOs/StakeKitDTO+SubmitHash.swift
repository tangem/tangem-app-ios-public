//
//  StakeKitDTO+SubmitHash.swift
//  TangemStaking
//
//

import Foundation

extension StakeKitDTO {
    enum SubmitHash {
        struct Request: Encodable {
            let hash: String
        }
    }
}
