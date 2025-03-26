//
//  DragAndDropGestureContextProviding.swift
//  Tangem
//
//

import Foundation
import UIKit

protocol DragAndDropGestureContextProviding {
    associatedtype Context

    func makeContext(from gestureRecognizer: UIGestureRecognizer) -> Context
}
