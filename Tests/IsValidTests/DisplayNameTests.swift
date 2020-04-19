//
//  File.swift
//  
//
//  Created by Anders Mannberg on 2020-04-19.
//

import XCTest
@testable import IsValid

class DisplayNameTests: XCTestCase {
    func testDisplayName_shouldNotBeEmpty() {
        XCTAssertFalse(IsValid.displayName(""))
    }
    
    func testDisplayName_shouldBeMax50Characters() {
        let s = String(repeatElement("a", count: 51))
        XCTAssertFalse(IsValid.displayName(s))
    }
}
