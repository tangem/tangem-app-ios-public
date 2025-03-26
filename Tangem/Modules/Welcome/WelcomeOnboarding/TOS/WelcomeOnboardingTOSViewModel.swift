//
//  WelcomeOnboardingTOSViewModel.swift
//  Tangem
//
//

import Foundation

class WelcomeOnboardingTOSViewModel: ObservableObject {
    let tosViewModel: TOSViewModel = .init()

    private weak var delegate: WelcomeOnboardingTOSDelegate?

    init(delegate: WelcomeOnboardingTOSDelegate) {
        self.delegate = delegate
    }

    func didTapAccept() {
        AppSettings.shared.termsOfServicesAccepted.append(tosViewModel.url.absoluteString)
        delegate?.didAcceptTOS()
    }
}
