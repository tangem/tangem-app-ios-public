//
//  VisaUtilities+FeatureStorage.swift
//  Tangem
//
//

import TangemVisa

extension VisaUtilities {
    init() {
        self = VisaUtilities(isTestnet: FeatureStorage.instance.isVisaTestnet)
    }
}
