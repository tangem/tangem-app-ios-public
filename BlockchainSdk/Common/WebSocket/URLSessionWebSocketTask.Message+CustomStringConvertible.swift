//
//  URLSessionWebSocketTask.Message+CustomStringConvertible.swift
//  BlockchainSdk
//
//

import Foundation

extension URLSessionWebSocketTask.Message: @retroactive CustomStringConvertible {
    public var description: String {
        switch self {
        case .data(let data):
            return "URLSessionWebSocketTask.Message.data: \(data)"
        case .string(let string):
            return "URLSessionWebSocketTask.Message.string: \(string)"
        @unknown default:
            return "URLSessionWebSocketTask.Message.@unknowndefault"
        }
    }
}
