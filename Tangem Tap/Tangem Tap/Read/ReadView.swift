//
//  ReadView.swift
//  Tangem Tap
//
//  Created by Alexander Osokin on 18.07.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation
import SwiftUI

struct ReadView: View {
    @EnvironmentObject var tangemSdkModel: TangemSdkModel
    
    let model = ReadViewModel()
    
    var body: some View {
        Button(action: {
            
        }) {
            Text("Scan")
        }
    }
}

struct ReadView_Previews: PreviewProvider {
    static var previews: some View {
        ReadView()
    }
}
