//
//  PasswordTests.swift
//  IsValidTests
//
//  Created by Anders Mannberg on 2020-04-10.
//

import XCTest
@testable import IsValid

class PasswordTests: XCTestCase {
    func testPassword_shouldContainAtLeastEightCharacters() {
        XCTAssertFalse(IsValid.password("aaaaaaa"))
    }
    
    func testPassword_shouldContainAtLeastOneDigit() {
        XCTAssertFalse(IsValid.password("aaaaaaaa"))
        XCTAssertTrue(IsValid.password("ABCDEFG1"))
    }
    
    func testPassword_shouldContainAtLeastOneCharacter() {
        XCTAssertFalse(IsValid.password("11111111"))
        XCTAssertFalse(IsValid.password("1#######"))
    }
    
    func testPassword_shouldContainOnlyEnglishLettersNumbersAndSomeSpecialCharacters() {
        XCTAssertFalse(IsValid.password("aaaaaaå1"))
        
        XCTAssertTrue(IsValid.password("aaaaaaa1"))
        XCTAssertTrue(IsValid.password("aaaaaa1_"))
        XCTAssertTrue(IsValid.password("aaaaaa1!"))
        XCTAssertTrue(IsValid.password("aaaaaa1#"))
        XCTAssertTrue(IsValid.password("aaaaaa1$"))
        XCTAssertTrue(IsValid.password("aaaaaa1&"))
        XCTAssertTrue(IsValid.password("aaaaaa1*"))
    }
    
    func testPassword_shouldContainMaximum20Characters() {
        let twentyOneCharacterString = "aaaaaaaaaaaaaaaaaaa1a"
        XCTAssertFalse(IsValid.password(twentyOneCharacterString))
    }
}
