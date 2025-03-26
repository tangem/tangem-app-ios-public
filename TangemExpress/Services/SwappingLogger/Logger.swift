//
//  Logger.swift
//  TangemExpress
//
//

import Foundation

public protocol Logger {
    func error(_ error: Error)
    func debug<T>(_ message: @autoclosure () -> T)
}
