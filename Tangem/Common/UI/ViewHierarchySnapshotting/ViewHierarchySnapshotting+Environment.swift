//
//  ViewHierarchySnapshotting.swift
//  Tangem
//
//

import SwiftUI

// MARK: - Environment values

extension EnvironmentValues {
    var viewHierarchySnapshotter: ViewHierarchySnapshotting? {
        get { self[ViewHierarchySnapshotterEnvironmentKey.self] }
        set { self[ViewHierarchySnapshotterEnvironmentKey.self] = newValue }
    }
}

// MARK: - Private implementation

private enum ViewHierarchySnapshotterEnvironmentKey: EnvironmentKey {
    static var defaultValue: ViewHierarchySnapshotting? { nil }
}
