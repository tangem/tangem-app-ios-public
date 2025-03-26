//
//  MainHeaderInfoProvider.swift
//  Tangem
//
//

import Combine

protocol MainHeaderSupplementInfoProvider: AnyObject {
    var cardHeaderImagePublisher: AnyPublisher<ImageType?, Never> { get }
    var userWalletNamePublisher: AnyPublisher<String, Never> { get }
}
