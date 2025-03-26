//
//  UserCodeRecovering.swift
//  Tangem
//
//

import Foundation
import Combine
import TangemSdk

protocol UserCodeRecovering: AnyObject {
    var isUserCodeRecoveryAllowed: Bool { get }
    var isUserCodeRecoveryAllowedPublisher: AnyPublisher<Bool, Never> { get }

    func toggleUserCodeRecoveryAllowed(completion: @escaping (Result<Bool, TangemSdkError>) -> Void)
}
