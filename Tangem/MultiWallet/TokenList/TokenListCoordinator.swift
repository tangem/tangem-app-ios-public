//
//  TokenListCoordinator.swift
//  Tangem
//
//  Created by Alexander Osokin on 15.06.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation


class TokenListCoordinator: ObservableObject, Identifiable {
    //MARK: - View models
    @Published private(set) var tokenListViewModel: TokenListViewModel!
    
    func start(with mode: TokenListViewModel.Mode) {
        tokenListViewModel = .init(mode: mode)
    }
}
