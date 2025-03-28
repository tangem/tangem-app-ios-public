//
//  SecurityModeViewModel.swift
//  Tangem
//
//

import Foundation
import SwiftUI
import Combine

class SecurityModeViewModel: ObservableObject {
    // MARK: ViewState

    @Published var securityViewModels: [DefaultSelectableRowViewModel<SecurityModeOption>] = []
    @Published var currentSecurityOption: SecurityModeOption
    @Published var error: AlertBinder?
    @Published var isLoading: Bool = false

    var isActionButtonEnabled: Bool {
        currentSecurityOption != securityOptionChangeInteractor.currentSecurityOption
    }

    // MARK: Private

    private let securityOptionChangeInteractor: SecurityOptionChanging
    private var bag = Set<AnyCancellable>()
    private weak var coordinator: SecurityModeRoutable?

    init(securityOptionChangeInteractor: SecurityOptionChanging, coordinator: SecurityModeRoutable) {
        self.securityOptionChangeInteractor = securityOptionChangeInteractor
        self.coordinator = coordinator
        currentSecurityOption = securityOptionChangeInteractor.currentSecurityOption

        updateView()
        bind()
    }

    func actionButtonDidTap() {
        switch currentSecurityOption {
        case .accessCode, .passCode:
            openPinChange(option: currentSecurityOption)
        case .longTap:
            isLoading = true
            securityOptionChangeInteractor.changeSecurityOption(.longTap) { [weak self] result in
                self?.logSecurityModeChange()

                self?.isLoading = false

                switch result {
                case .success:
                    break
                case .failure(let error):
                    if case .userCancelled = error.toTangemSdkError() {
                        return
                    }
                }
            }
        }
    }

    private func bind() {
        securityOptionChangeInteractor.currentSecurityOptionPublisher
            .assign(to: \.currentSecurityOption, on: self, ownership: .weak)
            .store(in: &bag)
    }

    private func updateView() {
        securityViewModels = securityOptionChangeInteractor.availableSecurityOptions.map { option in
            DefaultSelectableRowViewModel(
                id: option,
                title: option.title,
                subtitle: option.description
            )
        }
    }

    private func logSecurityModeChange() {
        Analytics.log(event: .securityModeChanged, params: [.mode: currentSecurityOption.analyticsName])
    }
}

enum SecurityModeOption: String, CaseIterable, Identifiable, Equatable {
    case longTap
    case passCode
    case accessCode

    var id: String { "\(self)" }

    var title: String {
        switch self {
        case .accessCode:
            return Localization.detailsManageSecurityAccessCode
        case .longTap:
            return Localization.detailsManageSecurityLongTap
        case .passCode:
            return Localization.detailsManageSecurityPasscode
        }
    }

    var titleForDetails: String {
        switch self {
        case .accessCode:
            return Localization.detailsManageSecurityAccessCode
        case .longTap:
            return Localization.detailsManageSecurityLongTapShorter
        case .passCode:
            return Localization.detailsManageSecurityPasscode
        }
    }

    var description: String {
        switch self {
        case .accessCode:
            return Localization.detailsManageSecurityAccessCodeDescription
        case .longTap:
            return Localization.detailsManageSecurityLongTapDescription
        case .passCode:
            return Localization.detailsManageSecurityPasscodeDescription
        }
    }

    var analyticsName: String {
        switch self {
        case .longTap:
            return "Long Tap"
        case .passCode:
            return "Passcode"
        case .accessCode:
            return "Access Code"
        }
    }
}

// MARK: - Navigation

extension SecurityModeViewModel {
    func openPinChange(option: SecurityModeOption) {
        coordinator?.openPinChange(with: option.title) { [weak self] coordinatorCompletion in
            guard let self = self else { return }

            securityOptionChangeInteractor.changeSecurityOption(option) { [weak self] result in
                self?.logSecurityModeChange()
                coordinatorCompletion(result)
            }
        }
    }
}
