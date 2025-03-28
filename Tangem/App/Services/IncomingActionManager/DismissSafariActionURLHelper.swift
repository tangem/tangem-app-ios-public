//
//  DismissSafariActionURLHelper.swift
//  Tangem
//
//

import Foundation

/// `tangem://redirect?action=dismissBrowser`
/// `https://tangem.com/redirect?action=dismissBrowser`
struct DismissSafariActionURLHelper: IncomingActionURLHelper {
    private let actionValue: String = "dismissBrowser"

    func buildURL(scheme: IncomingActionScheme) -> URL {
        var urlComponents = URLComponents(string: scheme.baseScheme)!
        urlComponents.percentEncodedQueryItems = [.init(name: IncomingActionConstants.incomingActionName, value: actionValue)]
        return urlComponents.url!
    }

    func parse(_ url: URL) -> IncomingAction? {
        guard let components = URLComponents(url: url, resolvingAgainstBaseURL: true) else {
            return nil
        }

        if let action = components.queryItems?.first(where: { $0.name == IncomingActionConstants.incomingActionName }),
           action.value == actionValue {
            return .dismissSafari(url)
        }

        return nil
    }
}
