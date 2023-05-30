//
//  LearnView.swift
//
//
//  Created by Andrey Chukavin on 30.05.2023.
//

import SwiftUI

struct LearnView: View {
    @ObservedObject private var viewModel: LearnViewModel

    init(viewModel: LearnViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text("Hello, World!")
        }
    }
}

struct LearnView_Preview: PreviewProvider {
    static let viewModel = LearnViewModel(coordinator: LearnCoordinator())

    static var previews: some View {
        LearnView(viewModel: viewModel)
    }
}
