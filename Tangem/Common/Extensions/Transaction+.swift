//
//  Transaction+.swift
//  Tangem
//
//

import SwiftUI

extension Transaction {
    /// Based on this https://developer.apple.com/forums/thread/727858 advice from an Apple framework engineer.
    static func withoutAnimations() -> Self {
        var transaction = Transaction()
        transaction.disablesAnimations = true
        return transaction
    }
}
