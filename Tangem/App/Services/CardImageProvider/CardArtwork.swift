//
//  CardArtwork.swift
//  Tangem
//
//

import Foundation
import TangemSdk

enum CardArtwork: Equatable {
    case notLoaded
    case noArtwork
    case artwork(ArtworkInfo)

    var artworkInfo: ArtworkInfo? {
        switch self {
        case .artwork(let artwork):
            return artwork
        case .notLoaded, .noArtwork:
            return nil
        }
    }
}
