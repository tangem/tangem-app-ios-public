//
//  OnrampIdentity.swift
//  TangemApp
//
//

public struct OnrampIdentity: Hashable {
    public let name: String
    public let code: String
    public let image: URL?

    public init(name: String, code: String, image: URL?) {
        self.name = name
        self.code = code
        self.image = image
    }
}
