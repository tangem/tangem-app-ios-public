//
//  StringExtensions.swift
//  Tangem
//
//  Created by Gennady Berezovsky on 03.10.18.
//  Copyright © 2018 Smart Cash AG. All rights reserved.
//

import Foundation

extension String: Error {}

public extension String {
    func remove(_ substring: String) -> String {
        return self.replacingOccurrences(of: substring, with: "")
    }
}
