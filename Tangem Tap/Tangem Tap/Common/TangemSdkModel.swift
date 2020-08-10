//
//  TangemSdkModel.swift
//  Tangem Tap
//
//  Created by Alexander Osokin on 18.07.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk

class TangemSdkModel: ObservableObject {
    lazy var tangemSdk: TangemSdk = {
        let sdk = TangemSdk()
        return sdk
    }()
    
    func scan() {
        tangemSdk.scanCard { result in
            switch result {
            case .failure(let error):
                break
            case .success(let card):
                break
            }
        }
    }
}
