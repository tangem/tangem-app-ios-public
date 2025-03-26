//
//  AnyPublisher+Async.swift
//  BlockchainSdk
//
//

import Combine

extension AnyPublisher where Failure == Error {
    func async() async throws -> Output {
        try await withCheckedThrowingContinuation { continuation in
            var cancellable: AnyCancellable?
            cancellable = first()
                .sink(receiveCompletion: { completion in
                    if case .failure(let failure) = completion {
                        continuation.resume(throwing: failure)
                    }
                }, receiveValue: { output in
                    continuation.resume(returning: output)
                    withExtendedLifetime(cancellable) {}
                })
        }
    }
}
