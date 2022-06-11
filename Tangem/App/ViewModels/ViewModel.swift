//
//  ViewModel.swift
//  Tangem
//
//  Created by Alexander Osokin on 03.11.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ViewModel: Identifiable, Initializable {
    @Injected(\.assemblyProvider) private var assemblyProvider: AssemblyProviding
    @Injected(\.navigationCoordinatorProvider) private var navigationCoordinatorProvider: NavigationCoordinatorProviding
    
    var assembly: Assembly { assemblyProvider.assembly }
    var navigation: NavigationCoordinator { navigationCoordinatorProvider.coordinator }
    
    func initialize() {}
}
