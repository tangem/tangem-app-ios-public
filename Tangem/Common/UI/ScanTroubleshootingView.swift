//
//  ScanTroubleshootingView.swift
//  Tangem
//
//

import SwiftUI

struct ScanTroubleshootingView: View {
    @Binding var isPresented: Bool

    var tryAgainAction: () -> Void
    var requestSupportAction: () -> Void
    var openScanCardManualAction: () -> Void

    var body: some View {
        Color.clear
            .frame(width: 0.5, height: 0.5)
            .actionSheet(isPresented: $isPresented, content: {
                ActionSheet(
                    title: Text(Localization.alertTroubleshootingScanCardTitle),
                    message: Text(Localization.alertTroubleshootingScanCardMessage),
                    buttons: [
                        .default(Text(Localization.alertButtonTryAgain), action: tryAgainAction),
                        .default(Text(Localization.commonReadMore), action: openScanCardManualAction),
                        .default(Text(Localization.alertButtonRequestSupport), action: requestSupportAction),
                        .cancel(),
                    ]
                )
            })
    }
}
