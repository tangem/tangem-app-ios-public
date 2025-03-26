//
//  SecurityModeRoutable.swift
//  Tangem
//
//

import Foundation

protocol SecurityModeRoutable: AnyObject {
    func openPinChange(with title: String, action: @escaping (_ completion: @escaping (Result<Void, Error>) -> Void) -> Void)
}
