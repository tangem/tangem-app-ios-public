//
//  ExpressProviderManagerFactory.swift
//  TangemExpress
//
//

import Foundation

protocol ExpressProviderManagerFactory {
    func makeExpressProviderManager(provider: ExpressProvider) -> ExpressProviderManager
}
