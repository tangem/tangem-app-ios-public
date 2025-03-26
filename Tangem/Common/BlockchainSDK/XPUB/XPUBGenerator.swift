//
//  XPUBGenerator.swift
//  Tangem
//
//

import Foundation

protocol XPUBGenerator {
    func generateXPUB() async throws -> String
}
