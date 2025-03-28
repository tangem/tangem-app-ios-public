//
//  ActionGenericRequest.swift
//  TangemStaking
//
//

import Foundation

public struct ActionGenericRequest {
    public let amount: Decimal
    public let address: String
    public let additionalAddresses: AdditionalAddresses?
    public let token: StakingTokenItem
    public let validator: String?
    public let integrationId: String
    public let tronResource: String?

    public init(
        amount: Decimal,
        address: String,
        additionalAddresses: AdditionalAddresses?,
        token: StakingTokenItem,
        validator: String?,
        integrationId: String,
        tronResource: String?
    ) {
        self.amount = amount
        self.address = address
        self.additionalAddresses = additionalAddresses
        self.token = token
        self.validator = validator
        self.integrationId = integrationId
        self.tronResource = tronResource
    }
}
