//
//  MarketsListStateUpdater.swift
//  Tangem
//
//

import Foundation

protocol MarketsListStateUpdater: AnyObject {
    func invalidateCells(in range: ClosedRange<Int>)
    func setupUpdates(for range: ClosedRange<Int>)
}
