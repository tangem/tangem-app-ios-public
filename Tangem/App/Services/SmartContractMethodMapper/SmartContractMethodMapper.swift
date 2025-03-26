//
//  SmartContractMethodMapper.swift
//  Tangem
//
//

import Foundation

protocol SmartContractMethodMapper {
    func getName(for method: String) -> String?
}

private struct SmartContractMethodMapperKey: InjectionKey {
    static var currentValue: SmartContractMethodMapper = CommonSmartContractMethodMapper()
}

extension InjectedValues {
    var smartContractMethodMapper: SmartContractMethodMapper {
        get { Self[SmartContractMethodMapperKey.self] }
        set { Self[SmartContractMethodMapperKey.self] = newValue }
    }
}
