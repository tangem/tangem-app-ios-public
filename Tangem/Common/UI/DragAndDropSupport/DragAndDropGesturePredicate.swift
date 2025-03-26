//
//  DragAndDropGesturePredicate.swift
//  Tangem
//
//

import Foundation
import UIKit

protocol DragAndDropGesturePredicate {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
}
