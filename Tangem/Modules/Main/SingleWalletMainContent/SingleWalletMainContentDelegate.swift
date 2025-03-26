//
//  SingleWalletMainContentDelegate.swift
//  Tangem
//
//

import Foundation

protocol SingleWalletMainContentDelegate: AnyObject {
    func present(actionSheet: ActionSheetBinder)
    func displayAddressCopiedToast()
}
