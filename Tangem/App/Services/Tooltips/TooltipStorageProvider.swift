//
//  TooltipStorageProvider.swift
//  Tangem
//
//

import Foundation

// MARK: - Provider

/// A utility that provides access to keys for displaying any tooltip views
class TooltipStorageProvider {
    @AppStorageCompat(TooltipStorageKeys.marketsTooltipWasShown)
    var marketsTooltipWasShown: Bool = false
}

// MARK: - Keys

private enum TooltipStorageKeys: String {
    case marketsTooltipWasShown = "tangem_markets_tooltip_was_shown"
}
