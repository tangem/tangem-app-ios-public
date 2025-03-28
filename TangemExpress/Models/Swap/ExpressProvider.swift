//
//  ExpressProvider.swift
//  TangemExpress
//
//

import Foundation

public struct ExpressProvider: Hashable {
    public typealias Id = String

    public let id: Id
    public let name: String
    public let type: ExpressProviderType
    public let imageURL: URL?
    public let termsOfUse: URL?
    public let privacyPolicy: URL?
    public let recommended: Bool?
    public let slippage: Double?

    public init(
        id: Id,
        name: String,
        type: ExpressProviderType,
        imageURL: URL?,
        termsOfUse: URL?,
        privacyPolicy: URL?,
        recommended: Bool?,
        slippage: Double?
    ) {
        self.id = id
        self.name = name
        self.type = type
        self.imageURL = imageURL
        self.termsOfUse = termsOfUse
        self.privacyPolicy = privacyPolicy
        self.recommended = recommended
        self.slippage = slippage
    }
}
