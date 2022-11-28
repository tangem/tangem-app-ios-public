//
//  UserWalletStorageAgreementRoutable.swift
//  Tangem
//
//  Created by Andrey Chukavin on 16.08.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Foundation

protocol UserWalletStorageAgreementRoutable: AnyObject {
    func didAgreeToSaveUserWallets()
    func didDeclineToSaveUserWallets()
}
