//
//  PreviewCards.swift
//  Tangem
//
//  Created by Andrew Son on 18/11/22.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import TangemSdk

extension Card {
    private static var walletWithBackupUrl: URL {
        Bundle.main.url(forResource: "walletWithBackup", withExtension: "json")!
    }

    static var walletWithBackup: Card {
        let dataStr = try! String(contentsOf: walletWithBackupUrl)
        let decoder = JSONDecoder.tangemSdkDecoder
        decoder.keyDecodingStrategy = .useDefaultKeys
        return try! decoder.decode(Card.self, from: dataStr.data(using: .utf8)!)
    }
}
