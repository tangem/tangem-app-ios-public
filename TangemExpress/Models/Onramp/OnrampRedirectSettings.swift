//
//  OnrampRedirectSettings.swift
//  TangemApp
//
//

public struct OnrampRedirectSettings: Hashable {
    public let successURL: String
    public let theme: String
    public let language: String

    public init(successURL: String, theme: String, language: String) {
        self.successURL = successURL
        self.theme = theme
        self.language = language
    }
}
