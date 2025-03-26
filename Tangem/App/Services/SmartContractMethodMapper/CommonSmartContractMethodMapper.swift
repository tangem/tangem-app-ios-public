//
//  CommonSmartContractMethodMapper.swift
//  Tangem
//
//

import Foundation

class CommonSmartContractMethodMapper {
    private typealias DataSource = [String: ContractMethod]

    private lazy var dataSource: DataSource = {
        do {
            return try DispatchQueue.global().sync {
                return try JsonUtils.readBundleFile(with: "contract_methods", type: DataSource.self)
            }
        } catch {
            AppLog.shared.debug("Can't map EVM contract methods data source")
            AppLog.shared.error(error)
            return [:]
        }
    }()
}

// MARK: - SmartContractMethodMapper

extension CommonSmartContractMethodMapper: SmartContractMethodMapper {
    func getName(for method: String) -> String? {
        dataSource[method]?.name
    }
}

private extension CommonSmartContractMethodMapper {
    struct ContractMethod: Decodable {
        let name: String
        let source: URL?
        let info: String?
    }
}
