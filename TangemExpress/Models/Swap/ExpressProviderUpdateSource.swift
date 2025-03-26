//
//  ExpressProviderUpdateSource.swift
//  TangemExpress
//
//

public enum ExpressProviderUpdateSource {
    case amountChange
    case autoUpdate
    case pairChange

    public var isRequiredUpdateSelectedProvider: Bool {
        switch self {
        case .amountChange, .pairChange: true
        case .autoUpdate: false
        }
    }
}
