//
//  WebShopView.swift
//  Tangem
//
//  Created by Andrey Chukavin on 07.07.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import SwiftUI

struct WebShopView: View {
    let url = URL(string: "https://tangem.com/ru/resellers/")!
    
    var body: some View {
        SafariView(url: url)
    }
}
