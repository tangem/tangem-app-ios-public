//
//  DefaultToggleRowView.swift
//  Tangem
//
//

import SwiftUI

struct DefaultToggleRowView: View {
    private let viewModel: DefaultToggleRowViewModel
    @State private var isOn: Bool

    init(viewModel: DefaultToggleRowViewModel) {
        self.viewModel = viewModel
        isOn = viewModel.isOn.value
    }

    var body: some View {
        HStack {
            Text(viewModel.title)
                .style(
                    Fonts.Regular.callout,
                    color: viewModel.isDisabled ? Colors.Text.disabled : Colors.Text.primary1
                )

            Spacer()

            Toggle("", isOn: $isOn)
                .labelsHidden()
                .tint(Colors.Control.checked)
                .disabled(viewModel.isDisabled)
        }
        .padding(.vertical, 8)
        .connect(state: $isOn, to: viewModel.isOn)
    }
}

struct DefaultToggleRowViewPreview: PreviewProvider {
    static var isSelected: Bool = true
    static let viewModel = DefaultToggleRowViewModel(
        title: "Title",
        isDisabled: false,
        isOn: .init(
            get: { isSelected },
            set: { isSelected = $0 }
        )
    )

    static var previews: some View {
        DefaultToggleRowView(viewModel: viewModel)
    }
}
