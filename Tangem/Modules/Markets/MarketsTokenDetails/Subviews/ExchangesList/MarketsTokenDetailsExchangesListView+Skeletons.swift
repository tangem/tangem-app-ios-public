//
//  MarketsTokenDetailsExchangesListView+Skeletons.swift
//  Tangem
//
//

import SwiftUI

extension MarketsTokenDetailsExchangesListView {
    struct ExchangeLoaderView: View {
        var body: some View {
            HStack(spacing: 12) {
                SkeletonView()
                    .frame(size: .init(bothDimensions: 36))
                    .cornerRadiusContinuous(18)

                VStack(spacing: 8) {
                    HStack {
                        SkeletonView()
                            .frame(size: .init(width: 70, height: 12))
                            .cornerRadiusContinuous(3)

                        Spacer()

                        SkeletonView()
                            .frame(size: .init(width: 40, height: 12))
                            .cornerRadiusContinuous(3)
                    }

                    HStack {
                        SkeletonView()
                            .frame(size: .init(width: 52, height: 12))
                            .cornerRadiusContinuous(3)

                        Spacer()

                        SkeletonView()
                            .frame(size: .init(width: 40, height: 12))
                            .cornerRadiusContinuous(3)
                    }
                }
            }
            .padding(14)
        }
    }
}
