//
//  BackupService+.swift
//  Tangem
//
//  Created by Andrey Chukavin on 16.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation
import TangemSdk

extension BackupService {
    var hasInterruptedSaltPayBackup: Bool {
        guard hasIncompletedBackup,
              let primaryCard = primaryCard,
              let batchId = primaryCard.batchId else {
            return false
        }

        return SaltPayUtil().isSaltPayCard(batchId: batchId, cardId: primaryCard.cardId)
    }
}
