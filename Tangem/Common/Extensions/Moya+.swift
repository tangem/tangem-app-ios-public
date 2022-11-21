//
//  Moya+.swift
//  Tangem
//
//  Created by Andrew Son on 20/11/22.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Moya

extension MoyaProvider {
    func asyncRequest(for target: Target) async throws -> Response {
        try await withCheckedThrowingContinuation { [weak self] continuation in
            guard let self = self else { return }

            self.request(target) { result in
                switch result {
                case .success(let responseValue):
                    continuation.resume(returning: responseValue)
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
}
