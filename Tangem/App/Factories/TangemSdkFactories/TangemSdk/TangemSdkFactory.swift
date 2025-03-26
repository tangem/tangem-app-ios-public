//
//  TangemSdkFactory.swift
//  Tangem
//
//

import Foundation
import TangemSdk

protocol TangemSdkFactory {
    func makeTangemSdk() -> TangemSdk
}
