//
//  CardViewModel+Combine.swift
//  Tangem
//
//  Created by Andrew Son on 24.09.2021.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation
import Combine

extension CardViewModel {

    func createWallet() -> AnyPublisher<Void, Error> {
        Deferred {
            Future { [weak self] promise in
                guard let self = self else {
                    promise(.failure("Uninitialized"))
                    return
                }

                self.createWallet { result in
                    switch result {
                    case .success:
                        promise(.success(()))
                    case .failure(let error):
                        promise(.failure(error))
                    }
                }
            }
        }
        .eraseToAnyPublisher()
    }

}
