//
//  CommonLogger.swift
//  TangemExpress
//
//

import Foundation

struct CommonLogger: Logger {
    func error(_ error: Error) {
        print(error)
    }

    func debug<T>(_ message: @autoclosure () -> T) {
        print(message())
    }
}
