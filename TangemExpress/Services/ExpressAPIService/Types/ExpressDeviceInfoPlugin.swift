//
//  ExpressDeviceInfoPlugin.swift
//  TangemExpress
//
//

import Foundation
import Moya

struct ExpressDeviceInfoPlugin: PluginType {
    let deviceInfo: ExpressDeviceInfo

    func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
        var request = request

        request.headers.add(name: "version", value: deviceInfo.version)
        request.headers.add(name: "platform", value: deviceInfo.platform)

        return request
    }
}
