//
//  OrganizeTokensHeaderViewModel.swift
//  Tangem
//
//

import Foundation
import Combine
import CombineExt

final class OrganizeTokensHeaderViewModel: ObservableObject {
    @Published var isSortByBalanceEnabled = false

    var sortByBalanceButtonTitle: String {
        return Localization.organizeTokensSortByBalance
    }

    @Published var isGroupingEnabled = false

    var groupingButtonTitle: String {
        return isGroupingEnabled
            ? Localization.organizeTokensUngroup
            : Localization.organizeTokensGroup
    }

    private let optionsProviding: OrganizeTokensOptionsProviding
    private let optionsEditing: OrganizeTokensOptionsEditing

    private let onToggleSortState = PassthroughSubject<Void, Never>()
    private let onToggleGroupState = PassthroughSubject<Void, Never>()

    private var bag: Set<AnyCancellable> = []
    private var didBind = false

    init(
        optionsProviding: OrganizeTokensOptionsProviding,
        optionsEditing: OrganizeTokensOptionsEditing
    ) {
        self.optionsProviding = optionsProviding
        self.optionsEditing = optionsEditing
    }

    func onViewAppear() {
        bind()
    }

    func toggleSortState() {
        onToggleSortState.send()
    }

    func toggleGroupState() {
        onToggleGroupState.send(())
    }

    private func bind() {
        if didBind { return }

        optionsProviding
            .groupingOption
            .map(\.isGrouped)
            .receive(on: DispatchQueue.main)
            .assign(to: \.isGroupingEnabled, on: self, ownership: .weak)
            .store(in: &bag)

        optionsProviding
            .sortingOption
            .map(\.isSorted)
            .receive(on: DispatchQueue.main)
            .assign(to: \.isSortByBalanceEnabled, on: self, ownership: .weak)
            .store(in: &bag)

        onToggleSortState
            .throttle(for: 1.0, scheduler: DispatchQueue.main, latest: false)
            .withWeakCaptureOf(self)
            .sink { viewModel, _ in
                // The 'sort-by-balance' button only allows to enable balance sorting but not to disable it
                if viewModel.isSortByBalanceEnabled { return }

                Analytics.log(.organizeTokensButtonSortByBalance)
                viewModel.optionsEditing.sort(
                    by: viewModel.isSortByBalanceEnabled ? .dragAndDrop : .byBalance
                )
            }
            .store(in: &bag)

        onToggleGroupState
            .throttle(for: 1.0, scheduler: DispatchQueue.main, latest: false)
            .withWeakCaptureOf(self)
            .sink { viewModel, _ in
                Analytics.log(.organizeTokensButtonGroup)
                viewModel.optionsEditing.group(
                    by: viewModel.isGroupingEnabled ? .none : .byBlockchainNetwork
                )
            }
            .store(in: &bag)

        didBind = true
    }
}
