//
//  TokenIconView.swift
//  TangemClip
//
//  Created by Andrew Son on 11/05/21.
//  Copyright © 2021 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

struct TokenIconView: View {
    var token: TokenItem
    var size: CGSize
    
    var body: some View {
        if let path = token.imagePath, let url = URL(string: path) {
            WebImage(imagePath: url, placeholder: token.imageView.toAnyView())
        } else {
            token.imageView
        }
    }
    
}
