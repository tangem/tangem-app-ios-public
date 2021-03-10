////
////  ManageTokensViewModel.swift
////  Tangem Tap
////
////  Created by Andrew Son on 08/02/21.
////  Copyright © 2021 Tangem AG. All rights reserved.
////
//
//import Foundation
//import Combine
//
//class ManageTokensViewModel: ViewModel {
//    weak var assembly: Assembly!
//    weak var navigation: NavigationCoordinator!
//    
//    var walletModels: [WalletModel] //TODO: Handle multiple
//    
//    var walletModel: WalletModel {
//        walletModels.first!
//    }
//    
//    var addTokensModel: AddNewTokensViewModel {
//        assembly.makeAddTokensViewModel(for: walletModel)
//    }
//    
//    init(walletModels: [WalletModel]) {
//        self.walletModels = walletModels
//    }
//    
//    func removeToken(_ model: TokenBalanceViewModel) {
//        walletModel.removeToken(model.token)
//        objectWillChange.send()
//    }
//    
//}
