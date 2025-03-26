//
//  TangemProvider.swift
//  Tangem
//
//

import Foundation
import Moya

class TangemProvider<Target: TargetType>: MoyaProvider<Target> {
    init(
        stubClosure: @escaping StubClosure = MoyaProvider.neverStub,
        plugins: [PluginType] = [],
        configuration: URLSessionConfiguration = .defaultConfiguration
    ) {
        let session = Session(configuration: configuration)

        super.init(stubClosure: stubClosure, session: session, plugins: plugins)
    }
}

extension URLSessionConfiguration {
    static let defaultConfiguration: URLSessionConfiguration = {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 10
        configuration.timeoutIntervalForResource = 30
        return configuration
    }()
}
