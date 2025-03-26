//
//  CurrencyTests.swift
//  TangemTests
//
//

import XCTest
@testable import Tangem

class CurrencyTests: XCTestCase {
    func testDescriptionContainsCodeAndUnit() {
        let currency = CurrenciesResponse.Currency(
            id: "784",
            code: "AUD",
            name: "Australian Dollar",
            unit: "A$"
        )

        XCTAssertEqual(currency.description, "Australian Dollar (AUD) — A$")
    }
}
