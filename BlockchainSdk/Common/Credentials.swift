//
//  Credentials.swift
//  BlockchainSdk
//
//

import Foundation

public extension NetworkProviderConfiguration {
    struct Credentials: Decodable {
        let user: String
        let password: String

        public init(login: String, password: String) {
            user = login
            self.password = password
        }
    }
}
