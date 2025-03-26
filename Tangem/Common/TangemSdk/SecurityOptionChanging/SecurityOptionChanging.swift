//
//  SecurityOptionChanging.swift
//  Tangem
//
//

import Foundation
import Combine

protocol SecurityOptionChanging: AnyObject {
    var availableSecurityOptions: [SecurityModeOption] { get }
    var currentSecurityOption: SecurityModeOption { get }
    var currentSecurityOptionPublisher: AnyPublisher<SecurityModeOption, Never> { get }

    func changeSecurityOption(_ option: SecurityModeOption, completion: @escaping (Result<Void, Error>) -> Void)
}
