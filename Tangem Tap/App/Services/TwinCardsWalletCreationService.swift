//
//  TwinCardsWalletCreationService.swift
//  Tangem Tap
//
//  Created by Andrew Son on 18/11/20.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation
import Combine
import TangemSdk

class TwinCardsWalleCreationService {
	
	private var firstTwinPublicKey: Data?
	private var secondTwinPublicKey: Data?
	
	func subscribe() -> AnyPublisher<Bool, Error> {
		return Just(true).setFailureType(to: Error.self).eraseToAnyPublisher()
	}
	
	func executeCurrentStep() {
		
	}
	
}
