//
//  CasperError.swift
//  BlockchainSdk
//
//

import Foundation

enum CSPRError: Error {
    case invalidNumber
    case none
}

enum CSPRMethodError: Error {
    case invalidURL
    case invalidParams
    case parseError
    case methodNotFound
    case unknown
    case getDataBackError
    case NONE
}

enum CSPRMethodCallError: Error {
    case casperError(code: Int, message: String, methodCall: String)
    case none
}
