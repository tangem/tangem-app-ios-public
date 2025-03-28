//
//  DeviceInfoProvider.swift
//  Tangem
//
//

import Foundation
import UIKit

struct DeviceInfoProvider {
    enum Subject: CaseIterable {
        case deviceModel
        case osVersion
        case appVersion

        var payload: String {
            let device = UIDevice.current
            switch self {
            case .deviceModel:
                return device.iPhoneModel?.name ?? device.model
            case .osVersion:
                return [device.systemName, device.systemVersion].joined(separator: " ")
            case .appVersion:
                return [
                    InfoDictionaryUtils.version.value() ?? "",
                    "(\(InfoDictionaryUtils.bundleVersion.value() ?? ""))",
                ]
                .joined(separator: " ")
            }
        }

        var description: String {
            switch self {
            case .deviceModel: return "Phone model: \(payload)"
            case .osVersion: return "OS version: \(payload)"
            case .appVersion: return "App version: \(payload)"
            }
        }
    }

    static func info(for subjects: [Subject] = Subject.allCases) -> String {
        let info = subjects.map { $0.description }.joined(separator: "\n")
        return "\n\(info)\n"
    }
}
