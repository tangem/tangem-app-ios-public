//
//  TlvBuilder.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 23.01.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

public class TlvBuilder {
    private var tlv = [Tlv]()
    private let encoder = TlvEncoder()
    
    @discardableResult
    public func append<T>(_ tag: TlvTag, value: T) throws -> TlvBuilder {
        tlv.append(try encoder.encode(tag, value: value))
        return self
    }
    
    public func serialize() -> Data {
        return tlv.serialize()
    }
}
