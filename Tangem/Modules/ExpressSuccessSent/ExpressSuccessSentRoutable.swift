//
//  ExpressSuccessSentRoutable.swift
//  Tangem
//
//

import Foundation

protocol ExpressSuccessSentRoutable: AnyObject {
    func openWebView(url: URL?)
    func close()
}
