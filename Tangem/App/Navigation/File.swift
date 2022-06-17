//
//  File.swift
//  Tangem
//
//  Created by Alexander Osokin on 17.06.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol CoordinatorObject: ObservableObject, Identifiable {
    var dismissAction: () -> Void { get set }
    
    func dismiss()
}

extension CoordinatorObject {
    func dismiss() {
        dismissAction()
    }
}
