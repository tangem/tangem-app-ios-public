//
//  MainViewPage.swift
//  Tangem
//
//

import Foundation

// An interface representing single page (typically, one page per card or wallet) on the main screen.
protocol MainViewPage {
    func onPageAppear()
    func onPageDisappear()
}
