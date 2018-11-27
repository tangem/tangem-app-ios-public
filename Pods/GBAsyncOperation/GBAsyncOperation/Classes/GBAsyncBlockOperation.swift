//
//  AsyncOperation.swift
//  Tangem
//
//  Created by Gennady Berezovsky on 03.10.18.
//  Copyright © 2018 Smart Cash AG. All rights reserved.
//

import Foundation

open class GBAsyncBlockOperation: GBAsyncOperation {

    let block: () -> Void

    public init(block: @escaping () -> Void) {
        self.block = block
    }

    open override func main() {
        block()
        finish()
    }
}
