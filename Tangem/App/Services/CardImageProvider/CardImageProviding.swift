//
//  CardImageProviding.swift
//  Tangem
//
//  Created by Sergey Balashov on 15.09.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import Combine

protocol CardImageProviding {
    func loadImage(cardId: String, cardPublicKey: Data) -> AnyPublisher<CardImageResult, Never>
    func loadImage(cardId: String, cardPublicKey: Data, artwork: CardArtwork?) -> AnyPublisher<CardImageResult, Never>
    func loadTwinImage(for number: Int) -> AnyPublisher<CardImageResult, Never>
}
