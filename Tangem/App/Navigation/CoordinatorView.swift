//
//  CoordinatorView.swift
//  Tangem
//
//  Created by Alexander Osokin on 30.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

protocol CoordinatorView: View {
    associatedtype CoordinatorType: ObservableObject

    var coordinator: CoordinatorType { get }
}
