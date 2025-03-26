//
//  RewardScheduleType.swift
//  TangemStaking
//
//

import Foundation

public enum RewardScheduleType: Hashable {
    case generic(String)

    case seconds(min: Int, max: Int)
    case daily
    case days(min: Int, max: Int)
}
