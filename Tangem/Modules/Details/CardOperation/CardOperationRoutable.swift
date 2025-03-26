//
//  CardOperationRoutable.swift
//  Tangem
//
//

import Foundation

protocol CardOperationRoutable: AnyObject {
    func popToRoot()
    func dismissCardOperation()
}
