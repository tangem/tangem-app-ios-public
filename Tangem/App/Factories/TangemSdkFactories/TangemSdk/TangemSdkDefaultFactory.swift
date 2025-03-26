//
//  TangemSdkDefaultFactory.swift
//  Tangem
//
//

import Foundation
import TangemSdk

class TangemSdkDefaultFactory {
    func makeTangemSdk(with config: Config) -> TangemSdk {
        let sdk = TangemSdk()
        sdk.config = config
        return sdk
    }
}

extension TangemSdkDefaultFactory: TangemSdkFactory {
    func makeTangemSdk() -> TangemSdk {
        let config = TangemSdkConfigFactory().makeDefaultConfig()
        return makeTangemSdk(with: config)
    }
}
