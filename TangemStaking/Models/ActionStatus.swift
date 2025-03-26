//
//  ActionStatus.swift
//  TangemStaking
//
//

import Foundation

public enum ActionStatus: String, Hashable {
    case created
    case waitingForNext
    case processing
    case failed
    case success
}
