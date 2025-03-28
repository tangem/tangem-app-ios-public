//
//  AddressIconViewModel.swift
//  Tangem
//
//

import Foundation
import BlockiesSwift

class AddressIconViewModel {
    let size: CGFloat

    lazy var image: UIImage? = {
        guard !address.isEmpty else { return nil }

        let blockies = Blockies(
            seed: address.lowercased(),
            size: numberOfBlocks,
            scale: scale,
            color: nil,
            bgColor: nil,
            spotColor: nil
        )

        return blockies.createImage()
    }()

    private let address: String
    private let numberOfBlocks = 12
    private let scale = 3

    init(address: String) {
        size = CGFloat(numberOfBlocks * scale)
        self.address = address
    }
}
