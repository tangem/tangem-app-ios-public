//
//  WebViewContainer.swift
//  Tangem
//
//

import SwiftUI

struct WebViewContainer: View {
    let viewModel: WebViewContainerViewModel

    @Environment(\.presentationMode) private var presentationMode
    @State private var popupUrl: URL?
    @State private var isLoading: Bool = true

    var body: some View {
        VStack {
            if viewModel.withCloseButton {
                NavigationView {
                    content
                        .navigationBarItems(leading:
                            Button(Localization.commonClose) {
                                presentationMode.wrappedValue.dismiss()
                            }
                            .animation(nil)
                        )
                }
            } else {
                content
            }
        }
        .sheet(item: $popupUrl) { popupUrl in
            NavigationView {
                WebView(url: popupUrl, popupUrl: .constant(nil), isLoading: .constant(false))
                    .navigationBarTitle("", displayMode: .inline)
            }
        }
    }

    private var webViewContent: some View {
        WebView(
            url: viewModel.url,
            popupUrl: $popupUrl,
            urlActions: viewModel.urlActions,
            isLoading: $isLoading,
            contentInset: viewModel.contentInset
        )
    }

    private var content: some View {
        ZStack {
            if viewModel.withNavigationBar {
                webViewContent
                    .navigationBarTitle(Text(viewModel.title), displayMode: .inline)
                    .background(Colors.Old.tangemBg.edgesIgnoringSafeArea(.all))
            } else {
                webViewContent
            }

            if isLoading, viewModel.addLoadingIndicator {
                ActivityIndicatorView(color: .tangemGrayDark)
            }
        }
    }
}
