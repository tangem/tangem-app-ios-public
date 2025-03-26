//
//  NDEFURLParser.swift
//  Tangem
//
//

import Foundation

struct NDEFURLParser: IncomingActionURLParser {
    func parse(_ url: URL) -> IncomingAction? {
        if url.absoluteString.starts(with: IncomingActionConstants.ndefURL) {
            return .start
        }

        return nil
    }
}
