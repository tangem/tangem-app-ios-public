//
//  VeChainNetworkResult.ContractCall+.swift
//  BlockchainSdk
//
//

import Foundation

extension VeChainNetworkResult.ContractCallPayload {
    func ensureNoError() throws {
        if let vmInvocationError = vmError, !vmInvocationError.isEmpty {
            throw ContractCallError.contractCallFailed
        }

        if reverted {
            throw ContractCallError.contractCallReverted
        }
    }
}

// MARK: - Auxiliary types

extension VeChainNetworkResult.ContractCallPayload {
    enum ContractCallError: Error {
        case contractCallFailed
        case contractCallReverted
    }
}
