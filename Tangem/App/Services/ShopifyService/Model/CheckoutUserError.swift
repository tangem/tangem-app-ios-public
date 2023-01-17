//
//  CheckoutUserError.swift
//  TangemShopify
//
//  Created by Andy on 17.12.2021.
//

import MobileBuySDK

extension Storefront.CheckoutUserErrorQuery {
    @discardableResult
    func checkoutUserErrorFields() -> Storefront.CheckoutUserErrorQuery {
        field()
            .message()
    }
}
