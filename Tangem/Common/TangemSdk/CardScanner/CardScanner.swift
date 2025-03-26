//
//  CardScanner.swift
//  Tangem
//
//

import Foundation
import Combine
import TangemSdk

protocol CardScanner {
    func scanCard(completion: @escaping (Result<AppScanTaskResponse, TangemSdkError>) -> Void)
    func scanCardPublisher() -> AnyPublisher<AppScanTaskResponse, TangemSdkError>
}
