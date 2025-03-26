//
//  GenericTangemSdkFactory.swift
//  Tangem
//
//

import Foundation
import TangemSdk

class GenericTangemSdkFactory: TangemSdkFactory {
    private let isAccessCodeSet: Bool

    init(isAccessCodeSet: Bool) {
        self.isAccessCodeSet = isAccessCodeSet
    }

    func makeTangemSdk() -> TangemSdk {
        var config = TangemSdkConfigFactory().makeDefaultConfig()
        config.accessCodeRequestPolicy = AccessCodeRequestPolicyFactory().makePolicy(isAccessCodeSet: isAccessCodeSet)
        let sdk = TangemSdkDefaultFactory().makeTangemSdk(with: config)
        return sdk
    }
}
