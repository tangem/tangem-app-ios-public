//
//  ViewModel.swift
//  Tangem Tap
//
//  Created by Alexander Osokin on 03.11.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

protocol ViewModel: Identifiable, ViewModelNavigatable {
    var assembly: Assembly! { get set }
}

protocol ViewModelNavigatable: AnyObject {
    var navigation: NavigationCoordinator! { get set }
}
