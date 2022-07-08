//
//  GeoIpService.swift
//  Tangem
//
//  Created by Andrey Chukavin on 07.07.2022.
//  Copyright © 2022 Tangem AG. All rights reserved.
//

import Combine

protocol GeoIpService: Initializable {
    var regionCode: String { get }
}

private struct GeoIpServiceKey: InjectionKey {
    static var currentValue: GeoIpService = CommonGeoIpService()
}

extension InjectedValues {
    var geoIpService: GeoIpService {
        get { Self[GeoIpServiceKey.self] }
        set { Self[GeoIpServiceKey.self] = newValue }
    }
}
