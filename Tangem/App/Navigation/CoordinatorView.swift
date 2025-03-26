//
//  CoordinatorView.swift
//  Tangem
//
//

import Foundation
import SwiftUI

protocol CoordinatorView: View {
    associatedtype CoordinatorType: ObservableObject

    var coordinator: CoordinatorType { get }
}
