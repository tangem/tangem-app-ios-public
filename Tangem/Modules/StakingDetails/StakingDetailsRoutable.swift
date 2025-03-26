//
//  StakingDetailsRoutable.swift
//  Tangem
//
//

import Foundation
import TangemStaking

protocol StakingDetailsRoutable: AnyObject {
    func openStakingFlow()
    func openMultipleRewards()
    func openUnstakingFlow(action: UnstakingModel.Action)
    func openRestakingFlow(action: RestakingModel.Action)
    func openStakingSingleActionFlow(action: StakingSingleActionModel.Action)
    func openWhatIsStaking()
}
