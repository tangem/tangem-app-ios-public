//
//  AnyPublisher+.swift
//  Tangem
//
//

import Foundation
import Combine

extension AnyPublisher where Failure == Never {
    static func just(output: Output) -> AnyPublisher<Output, Failure> {
        Just(output).eraseToAnyPublisher()
    }
}

extension AnyPublisher where Failure: Error {
    static func just(output: Output) -> AnyPublisher<Output, Failure> {
        Just(output).setFailureType(to: Failure.self).eraseToAnyPublisher()
    }
}
