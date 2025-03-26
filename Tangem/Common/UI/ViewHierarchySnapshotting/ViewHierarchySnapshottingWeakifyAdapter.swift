//
//  ViewHierarchySnapshottingWeakifyAdapter.swift
//  Tangem
//
//

import Foundation
import UIKit

final class ViewHierarchySnapshottingWeakifyAdapter {
    typealias Adaptee = ViewHierarchySnapshotting & AnyObject

    private weak var adaptee: Adaptee?

    init(adaptee: Adaptee?) {
        self.adaptee = adaptee
    }
}

// MARK: - ViewHierarchySnapshotting protocol conformance

extension ViewHierarchySnapshottingWeakifyAdapter: ViewHierarchySnapshotting {
    func makeSnapshotView(afterScreenUpdates: Bool, overrideUserInterfaceStyle: UIUserInterfaceStyle?) -> UIView? {
        adaptee?.makeSnapshotView(afterScreenUpdates: afterScreenUpdates, overrideUserInterfaceStyle: overrideUserInterfaceStyle)
    }

    func makeSnapshotViewImage(afterScreenUpdates: Bool, isOpaque: Bool, overrideUserInterfaceStyle: UIUserInterfaceStyle?) -> UIImage? {
        adaptee?.makeSnapshotViewImage(
            afterScreenUpdates: afterScreenUpdates,
            isOpaque: isOpaque,
            overrideUserInterfaceStyle: overrideUserInterfaceStyle
        )
    }

    func makeSnapshotLayerImage(options: CALayerSnapshotOptions, isOpaque: Bool) -> UIImage? {
        adaptee?.makeSnapshotLayerImage(options: options, isOpaque: isOpaque)
    }
}
