//
//  TangemSdkProviding.swift
//  Tangem
//
//  Created by Alexander Osokin on 04.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk

protocol TangemSdkProviding {
    var sdk: TangemSdk { get }
    
    func prepareScan()
    func didScan(_ card: Card)
}

private struct TangemSdkProviderKey: InjectionKey {
    static var currentValue: TangemSdkProviding = TangemSdkProvider()
}

extension InjectedValues {
    var tangemSdkProvider: TangemSdkProviding {
        get { Self[TangemSdkProviderKey.self] }
        set { Self[TangemSdkProviderKey.self] = newValue }
    }
}
