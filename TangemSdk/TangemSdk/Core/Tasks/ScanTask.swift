//
//  ScanTask.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 03/10/2019.
//  Copyright © 2019 Tangem AG. All rights reserved.
//

import Foundation

public enum ScanResult {
    case onRead
    case onVerify
    case failure(Error)
}


@available(iOS 13.0, *)
public class ScanTask: Task<ScanResult> {
    override public func run(with environment: CardEnvironment, completion: @escaping (ScanResult) -> Void) {
         super.run(with: environment, completion: completion)
        //TODO: implemnent scan task
        
    }
}
