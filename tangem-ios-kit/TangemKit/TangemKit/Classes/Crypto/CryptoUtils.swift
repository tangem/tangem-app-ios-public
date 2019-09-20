//
//  CryptoUtils.swift
//  TangemKit
//
//  Created by Alexander Osokin on 06/09/2019.
//  Copyright © 2019 Smart Cash AG. All rights reserved.
//

import Foundation

class CryptoUtils {    
    static func getRandomBytes(count: Int) -> [UInt8]? {
        var bytes = [UInt8](repeating: 0, count: count)
        let status = SecRandomCopyBytes(kSecRandomDefault, bytes.count, &bytes)
        
        if status == errSecSuccess {
            return bytes
        } else {
            return nil
        }
    }
}
