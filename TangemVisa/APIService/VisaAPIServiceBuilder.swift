//
//  VisaAPIServiceBuilder.swift
//  TangemVisa
//
//

import Foundation
import Moya

public struct VisaAPIServiceBuilder {
    public init() {}

    public func build(isTestnet: Bool, urlSessionConfiguration: URLSessionConfiguration, logger: VisaLogger) -> VisaAPIService {
        let logger = InternalLogger(logger: logger)
        let provider = MoyaProvider<VisaAPITarget>(session: Session(configuration: urlSessionConfiguration))
        let additionalAPIHeaders = (try? VisaConfigProvider.shared().getTxHistoryAPIAdditionalHeaders()) ?? [:]

        return CommonVisaAPIService(isTestnet: isTestnet, additionalAPIHeaders: additionalAPIHeaders, provider: provider, logger: logger)
    }
}
