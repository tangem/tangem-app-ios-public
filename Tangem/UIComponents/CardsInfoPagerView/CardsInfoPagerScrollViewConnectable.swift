//
//  CardsInfoPagerScrollViewConnectable.swift
//  Tangem
//
//  Created by Andrey Fedorov on 05.07.2023.
//  Copyright © 2023 Tangem AG. All rights reserved.
//

import SwiftUI

// TODO: Andrey Fedorov - Fix generic resolution issue: Conflicting arguments to generic parameter 'Content' ('<<hole>>' vs. '<<hole>>' vs. '<<hole>>' vs. '<<hole>>')
protocol CardsInfoPagerScrollViewConnectable {
    associatedtype PlaceholderView: View

    var contentOffset: Binding<CGPoint> { get }
    var placeholderView: PlaceholderView { get }
}
