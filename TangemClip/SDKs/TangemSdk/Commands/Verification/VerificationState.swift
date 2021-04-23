//
//  VerificationState.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 11.07.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation


public enum VerificationState: String, Codable {
    case passed
    case offline
    case failed
    case notVerified
    case cancelled
}
