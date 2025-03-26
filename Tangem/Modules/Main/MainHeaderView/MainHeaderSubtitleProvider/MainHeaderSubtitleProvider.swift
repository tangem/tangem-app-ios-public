//
//  MainHeaderSubtitleProvider.swift
//  Tangem
//
//

import Combine

protocol MainHeaderSubtitleProvider: AnyObject {
    var isLoadingPublisher: AnyPublisher<Bool, Never> { get }
    var subtitlePublisher: AnyPublisher<MainHeaderSubtitleInfo, Never> { get }

    var containsSensitiveInfo: Bool { get }
}
