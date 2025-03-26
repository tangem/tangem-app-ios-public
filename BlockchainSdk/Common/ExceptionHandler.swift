//
//  ExceptionHandler.swift
//  BlockchainSdk
//
//

import Foundation

public protocol ExceptionHandlerOutput {
    func handleAPISwitch(currentHost: String, nextHost: String, message: String)
}

public final class ExceptionHandler {
    // MARK: - Static

    public static let shared: ExceptionHandler = .init()

    // MARK: - Properties

    private var outputs: [ExceptionHandlerOutput] = []

    // MARK: - Configuration

    public func append(output: ExceptionHandlerOutput) {
        outputs.append(output)
    }

    // MARK: - Handle

    func handleAPISwitch(currentHost: String, nextHost: String, message: String) {
        outputs.forEach { output in
            output.handleAPISwitch(
                currentHost: currentHost,
                nextHost: nextHost,
                message: message
            )
        }
    }
}
