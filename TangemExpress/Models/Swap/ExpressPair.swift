//
//  ExpressPair.swift
//  TangemExpress
//
//

import Foundation

public struct ExpressPair: Hashable {
    public let source: ExpressCurrency
    public let destination: ExpressCurrency
    public let providers: [ExpressProvider.Id]
}
