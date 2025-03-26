//
//  FactorySettingsResetting.swift
//  Tangem
//
//

import Foundation
import TangemSdk

protocol FactorySettingsResetting: AnyObject {
    func resetCard(headerMessage: String?, completion: @escaping (Result<Bool, TangemSdkError>) -> Void)
}
