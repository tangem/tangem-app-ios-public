//
//  SwappingPermissionRoutable.swift
//  Tangem
//
//  Created by Sergey Balashov on 21.11.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import TangemSwapping

protocol SwappingPermissionRoutable: AnyObject {
    func didSendApproveTransaction(transactionData: SwappingTransactionData)
    func userDidCancel()
}
