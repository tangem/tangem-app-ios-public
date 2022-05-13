//
//  CommonScannedCardsRepository.swift
//  Tangem
//
//  Created by Alexander Osokin on 06.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk

class CommonScannedCardsRepository: ScannedCardsRepository {
    @Injected(\.persistentStorage) var storage: PersistentStorageProtocol
    
    private(set) var cards: [String: SavedCard] = [:]
    private var storageKey: PersistentStorageKey { .cards }
    
    init() {
        fetch()
    }
    
    func add(_ cardInfo: CardInfo) {
        cards[cardInfo.card.cardId] = .savedCard(from: cardInfo)
        save()
    }
    
    private func save() {
        try? storage.store(value: cards, for: storageKey)
    }
    
    private func fetch() {
        cards = (try? storage.value(for: storageKey)) ?? [:]
    }
}
