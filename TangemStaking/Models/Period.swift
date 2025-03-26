//
//  Period.swift
//  TangemStaking
//
//

import Foundation

public enum Period: Hashable {
    case days(_ days: Int)

    public var isZero: Bool {
        switch self {
        case .days(let days):
            return days == 0
        }
    }
}
