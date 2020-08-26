//
//  TangemSdkService.swift
//  Tangem Tap
//
//  Created by Alexander Osokin on 25.08.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk

class TangemSdkService: ObservableObject {
    private lazy var tangemSdk: TangemSdk = {
        let sdk = TangemSdk()
        return sdk
    }()
    
    func scan(_ completion: @escaping  (Result<Card, Error>) -> Void) {
        tangemSdk.scanCard { result in
            switch result {
            case .failure(let error):
                completion(.failure(error))
            case .success(let card):
                if let status = card.status, status == .loaded {
                      completion(.success(card))
                } else {
                    //TODO: Handle card states
                   // completion(.failure(error))
                }
              
            }
        }
    }
}
