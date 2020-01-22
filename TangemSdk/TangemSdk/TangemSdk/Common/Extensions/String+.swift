//
//  String+.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 07/10/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

public extension String {
    func remove(_ substring: String) -> String {
        return self.replacingOccurrences(of: substring, with: "")
    }
    
    func sha256() -> Data {
        let data = Data(Array(utf8))
        return data.getSha256()
    }
    
    func sha512() -> Data {
        let data = Data(Array(utf8))
        return data.getSha512()
    }
}
