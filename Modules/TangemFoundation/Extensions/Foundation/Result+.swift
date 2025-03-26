//
//  Result+.swift
//  TangemFoundation
//
//

import Foundation

public extension Result {
    var value: Success? {
        switch self {
        case .success(let success):
            return success
        case .failure:
            return nil
        }
    }

    var error: Error? {
        switch self {
        case .success:
            return nil
        case .failure(let failure):
            return failure
        }
    }
}
