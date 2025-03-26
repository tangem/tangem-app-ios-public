//
//  ExpressPromotion.swift
//  Tangem
//
//

import Foundation

enum ExpressPromotion {}

extension ExpressPromotion {
    struct Request: Encodable {
        let programName: String
    }

    struct Response: Decodable {
        let name: String
        let all: Info

        struct Info: Decodable {
            let timeline: Timeline
            let status: Status
            let link: URL?
        }

        enum Status: String, Decodable {
            case active
            case pending
            case finished
        }
    }
}
