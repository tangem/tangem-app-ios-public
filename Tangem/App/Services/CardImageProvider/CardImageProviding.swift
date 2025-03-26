//
//  CardImageProviding.swift
//  Tangem
//
//

import Foundation
import Combine

protocol CardImageProviding {
    func loadImage(cardId: String, cardPublicKey: Data) -> AnyPublisher<CardImageResult, Never>
    func loadImage(cardId: String, cardPublicKey: Data, artwork: CardArtwork?) -> AnyPublisher<CardImageResult, Never>
    func loadTwinImage(for number: Int) -> AnyPublisher<CardImageResult, Never>
}
