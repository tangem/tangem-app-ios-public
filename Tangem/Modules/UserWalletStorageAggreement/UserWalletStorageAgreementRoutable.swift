//
//  UserWalletStorageAgreementRoutable.swift
//  Tangem
//
//

import Foundation

protocol UserWalletStorageAgreementRoutable: AnyObject {
    func didAgreeToSaveUserWallets()
    func didDeclineToSaveUserWallets()
}
