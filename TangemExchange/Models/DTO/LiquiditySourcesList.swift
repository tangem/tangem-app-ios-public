//
//  LiquiditySourcesList.swift
//  
//
//  Created by Pavel Grechikhin on 31.10.2022.
//

import Foundation

public struct LiquiditySourcesList: Decodable {
    public let protocols: [LiquidityProtocol]
}

public struct LiquidityProtocol: Decodable {
    public let id: String
    public let title: String
    public let image: String
    public let imageColor: String?
    
    enum CodingKeys: String, CodingKey {
        case imageColor = "img_color"
        case image = "img"
        case id
        case title
    }
}
