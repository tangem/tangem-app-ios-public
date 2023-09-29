//
//  ScrollViewRepresentableDelegate.swift
//  Tangem
//
//  Created by Andrey Fedorov on 27.09.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import Foundation
import UIKit

protocol ScrollViewRepresentableDelegate: AnyObject {
    func getSafeAreaInsets() -> UIEdgeInsets
    func contentOffsetDidChanged(contentOffset: CGPoint)
    func gesture(onChanged value: UIPanGestureRecognizer.Value)
    func gesture(onEnded value: UIPanGestureRecognizer.Value)
}
