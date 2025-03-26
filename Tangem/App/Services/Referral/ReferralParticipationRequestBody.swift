//
//  ReferralParticipationRequestBody.swift
//  Tangem
//
//

import Foundation
import Moya

struct ReferralParticipationRequestBody: Encodable {
    let walletId: String
    let networkId: String
    let tokenId: String
    let address: String
}
