//
//  PhotoSelectorViewModel.swift
//  Tangem
//
//

import UIKit

class PhotoSelectorViewModel: Identifiable {
    let didSelectPhoto: (UIImage?) -> Void

    init(didSelectPhoto: @escaping (UIImage?) -> Void) {
        self.didSelectPhoto = didSelectPhoto
    }
}
