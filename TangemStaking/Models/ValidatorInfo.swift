//
//  ValidatorInfo.swift
//  TangemStaking
//
//

import Foundation

public struct ValidatorInfo: Hashable {
    public let address: String
    public let name: String
    public let preferred: Bool
    public let partner: Bool
    public let iconURL: URL?
    public let apr: Decimal?

    public init(
        address: String,
        name: String,
        preferred: Bool,
        partner: Bool,
        iconURL: URL?,
        apr: Decimal?
    ) {
        self.address = address
        self.name = name
        self.partner = partner
        self.preferred = preferred
        self.iconURL = iconURL
        self.apr = apr
    }
}
