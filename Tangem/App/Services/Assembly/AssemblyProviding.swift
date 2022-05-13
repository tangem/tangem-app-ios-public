//
//  AssemblyProviding.swift
//  Tangem
//
//  Created by Alexander Osokin on 11.05.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol AssemblyProviding { //TODO: Refactor and remove
    var assembly: Assembly { get }
}
 
private struct AssemblyProviderKey: InjectionKey {
    static var currentValue: AssemblyProviding = AssemblyProvider()
}

extension InjectedValues {
    var assemblyProvider: AssemblyProviding {
        get { Self[AssemblyProviderKey.self] }
        set { Self[AssemblyProviderKey.self] = newValue }
    }
}

