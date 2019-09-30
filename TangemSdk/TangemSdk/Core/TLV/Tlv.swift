//
//  Tlv.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 27/09/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

public struct Tlv {
    public let tag: TlvTag
    public let tagRaw: Byte
    public let value: Data
    
    public init (_ tag: TlvTag, value: Data) {
        self.tag = tag
        self.tagRaw = tag.rawValue
        self.value = value
    }
    
    public init (tagRaw: Byte, value: Data) {
        self.tag = TlvTag(rawValue: tagRaw) ?? .unknown
        self.tagRaw = tagRaw
        self.value = value
    }
}
