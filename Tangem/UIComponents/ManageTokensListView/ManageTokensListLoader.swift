//
//  ManageTokensListLoader.swift
//  Tangem
//
//

import Foundation

protocol ManageTokensListLoader: AnyObject {
    var hasNextPage: Bool { get }
    func fetch()
}
