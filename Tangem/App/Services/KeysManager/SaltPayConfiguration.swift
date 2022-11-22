//
//  SaltPayConfig.swift
//  Tangem
//
//  Created by Alexander Osokin on 09.10.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

struct SaltPayConfiguration: Decodable {
    let zendesk: ZendeskConfig
    let kycProvider: KYCProvider
}

struct KYCProvider: Decodable {
    let baseUrl: String
    let externalIdParameterKey: String
    let sidParameterKey: String
    let sidValue: String
}
