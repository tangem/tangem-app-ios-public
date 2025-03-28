//
//  URLSessionTask.State+CustomStringConvertible.swift
//  BlockchainSdk
//
//

import Foundation

extension URLSessionTask.State: @retroactive CustomStringConvertible {
    public var description: String {
        switch self {
        case .running:
            return "URLSessionTask.State.running"
        case .suspended:
            return "URLSessionTask.State.suspended"
        case .canceling:
            return "URLSessionTask.State.canceling"
        case .completed:
            return "URLSessionTask.State.completed"
        @unknown default:
            return "URLSessionTask.State.@unknowndefault"
        }
    }
}
