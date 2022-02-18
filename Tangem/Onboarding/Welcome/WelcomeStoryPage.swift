//
//  WelcomeStoryPage.swift
//  Tangem
//
//  Created by Andrey Chukavin on 18.02.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

enum WelcomeStoryPage: Int, Identifiable, CaseIterable {
    var id: Int {
        self.rawValue
    }
    
    case meetTangem
    case awe
    case backup
    case currencies
    case web3
    case finish
}
