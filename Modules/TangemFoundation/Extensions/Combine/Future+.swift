//
//  Future+.swift
//  TangemFoundation
//
//

import Foundation
import Combine

public extension Future where Failure == Error {
    static func async(operation: @escaping () async throws -> Output) -> some Publisher<Output, Failure> {
        var task: Task<Void, Failure>?

        return Future<Output, Failure> { promise in
            task = Task {
                do {
                    let output = try await operation()
                    try Task.checkCancellation()
                    promise(.success(output))
                } catch {
                    promise(.failure(error))
                }
            }
        }.handleEvents(receiveCancel: {
            task?.cancel()
        })
    }
}
