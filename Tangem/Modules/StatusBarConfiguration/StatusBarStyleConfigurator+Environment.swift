//
//  StatusBarStyleConfigurator+Environment.swift
//  Tangem
//
//

import Foundation
import SwiftUI

// MARK: - Convenience extensions

extension EnvironmentValues {
    var statusBarStyleConfigurator: StatusBarStyleConfigurator {
        get { self[StatusBarStyleConfiguratorEnvironmentKey.self] }
        set { self[StatusBarStyleConfiguratorEnvironmentKey.self] = newValue }
    }
}

// MARK: - Private implementation

private struct StatusBarStyleConfiguratorEnvironmentKey: EnvironmentKey {
    static var defaultValue: StatusBarStyleConfigurator {
        return DummyStatusBarStyleConfigurator()
    }
}

// MARK: - Auxiliary types

struct DummyStatusBarStyleConfigurator: StatusBarStyleConfigurator {
    var selectedStatusBarStyle: UIStatusBarStyle { .default }

    func setSelectedStatusBarStyle(_ statusBarStyle: UIStatusBarStyle, animated: Bool) {}
}
