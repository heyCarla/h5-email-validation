//
//  PhoneNumberValidationTests.swift
//  PhoneNumberValidationTests
//
//  Created by Carla Alexander on 2016-03-21.
//  Copyright © 2016 MagicNoodles. All rights reserved.
//

import XCTest
@testable import PhoneNumberValidation

class PhoneNumberValidationTests: XCTestCase {
    
    // MARK: Validation Model Tests
    
    func testPhoneNumberValidation() {
        
        let validNumber     = "1234567890"
        let emptyNumber     = " "
        let tooShortNumber  = "12345"
        let tooLongNumber   = "1234567890123"
        let invalidNumber   = "##########"
        
        let numberValidator = PhoneNumberValidation()
        
        XCTAssert(numberValidator.parseEnteredPhoneNumber(validNumber) == true, "this is a valid phone number")
        XCTAssert(numberValidator.parseEnteredPhoneNumber(emptyNumber) == false, "empty strings will return false")
        XCTAssert(numberValidator.parseEnteredPhoneNumber(tooShortNumber) == false, "string that is too short will return false")
        XCTAssert(numberValidator.parseEnteredPhoneNumber(tooLongNumber) == false, "string that is too long will return false")
        XCTAssert(numberValidator.parseEnteredPhoneNumber(invalidNumber) == false, "strings containing special characters will return false")
    }
}
