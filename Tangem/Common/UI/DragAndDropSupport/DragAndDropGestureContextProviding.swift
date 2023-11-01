//
//  DragAndDropGestureContextProviding.swift
//  Tangem
//
//  Created by Andrey Fedorov on 11.10.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import UIKit

protocol DragAndDropGestureContextProviding {
    associatedtype Context

    func makeContext(from gestureRecognizer: UIGestureRecognizer) -> Context
}
