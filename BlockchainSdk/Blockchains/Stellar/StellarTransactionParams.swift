//
//  StellarTransactionParams.swift
//  BlockchainSdk
//
//

import Foundation
import stellarsdk

public typealias StellarMemo = Memo

public struct StellarTransactionParams: TransactionParams {
    var memo: StellarMemo?

    public init(memo: StellarMemo? = nil) {
        self.memo = memo
    }
}
