//
//  CardImageProviding.swift
//  Tangem
//
//  Created by Sergey Balashov on 15.09.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import UIKit
import Combine

protocol CardImageProviding {
    func loadImage(cardId: String, cardPublicKey: Data) -> AnyPublisher<UIImage, Never>
    func loadTwinImage(for number: Int) -> AnyPublisher<UIImage, Never>
}
