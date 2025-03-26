//
//  ExpressApproveRoutable.swift
//  Tangem
//
//

import TangemExpress

protocol ExpressApproveRoutable: AnyObject {
    func didSendApproveTransaction()
    func userDidCancel()
}
