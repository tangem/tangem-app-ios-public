//
//  KeysDerivingProvider.swift
//  Tangem
//
//

import Foundation

protocol KeysDerivingProvider: AnyObject {
    var keysDerivingInteractor: KeysDeriving { get }
}
