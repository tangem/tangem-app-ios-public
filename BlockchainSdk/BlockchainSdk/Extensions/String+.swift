//
//  String+.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 06.12.2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

extension String {
    func contains(_ string: String, ignoreCase: Bool = true) -> Bool {
        return self.range(of: string, options: ignoreCase ? .caseInsensitive : []) != nil
    }
    
    func removeHexPrefix() -> String {
        return String(self[self.index(self.startIndex, offsetBy: 2)...])
    }
}

extension String: Error, LocalizedError {
    public var errorDescription: String? {
        return self
    }
}
