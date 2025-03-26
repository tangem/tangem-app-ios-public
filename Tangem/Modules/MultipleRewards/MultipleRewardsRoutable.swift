//
//  MultipleRewardsRoutable.swift
//  Tangem
//
//

import Foundation
import TangemStaking

protocol MultipleRewardsRoutable: AnyObject {
    func openStakingSingleActionFlow(action: UnstakingModel.Action)
    func dismiss()
}
