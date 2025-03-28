//
//  OverlayContentStateObserver.swift
//  Tangem
//
//

import SwiftUI

protocol OverlayContentStateObserver {
    typealias StateObserver = (_ state: OverlayContentState) -> Void
    typealias ProgressObserver = (_ progress: CGFloat) -> Void

    /// - Warning: This method maintains a strong reference to the given `observer` closure.
    /// Remove this reference by using `removeObserver(forToken:)` method.
    func addObserver(_ observer: @escaping StateObserver, forToken token: any Hashable)

    /// - Warning: This method maintains a strong reference to the given `observer` closure.
    /// Remove this reference by using `removeObserver(forToken:)` method.
    func addObserver(_ observer: @escaping ProgressObserver, forToken token: any Hashable)

    func removeObserver(forToken token: any Hashable)
}
