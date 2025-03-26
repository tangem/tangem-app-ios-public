//
//  CardInitializer.swift
//  Tangem
//
//

import Foundation
import TangemSdk

protocol CardInitializer {
    var shouldReset: Bool { get set }
    func initializeCard(mnemonic: Mnemonic?, passphrase: String?, completion: @escaping (Result<CardInfo, TangemSdkError>) -> Void)
}
