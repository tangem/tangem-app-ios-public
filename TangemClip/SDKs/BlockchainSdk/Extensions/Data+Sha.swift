//
//  Data+.swift
//  BlockchainSdk
//
//  Created by Alexander Osokin on 13.12.2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

public extension Data {
	var doubleSha256: Data {
		sha256().sha256()
	}
	
	var ripemd160: Data {
		RIPEMD160.hash(message: self)
	}
	
	var sha256Ripemd160: Data {
		RIPEMD160.hash(message: sha256())
	}
}
