//
//  SeedPhraseManager.swift
//  Tangem
//
//

import Foundation
import TangemSdk

class SeedPhraseManager {
    private(set) var mnemonics: [EntropyLength: Mnemonic] = [:]

    func generateSeedPhrase() throws {
        let shortMnemonic = try Mnemonic(with: .bits128, wordList: .en)
        mnemonics[.bits128] = shortMnemonic
        let longMnemonic = try Mnemonic(with: .bits256, wordList: .en)
        mnemonics[.bits256] = longMnemonic
    }
}
