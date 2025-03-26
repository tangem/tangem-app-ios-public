//
//  APIListProvider.swift
//  Tangem
//
//

import Foundation
import Combine
import BlockchainSdk

protocol APIListProvider: Initializable {
    var apiList: APIList { get }
    var apiListPublisher: AnyPublisher<APIList, Never> { get }
}

private struct APIListProviderKey: InjectionKey {
    static var currentValue: APIListProvider = CommonAPIListProvider()
}

extension InjectedValues {
    var apiListProvider: APIListProvider {
        get { Self[APIListProviderKey.self] }
        set { Self[APIListProviderKey.self] = newValue }
    }
}
