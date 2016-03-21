//
//  PhoneNumberValidation.swift
//  PhoneNumberValidation
//
//  Created by Carla Alexander on 2016-03-21.
//  Copyright © 2016 MagicNoodles. All rights reserved.
//

import Foundation

struct PhoneNumberValidation {
    
    func parseEnteredPhoneNumber(phoneNumber: String) -> Bool {
        
        let validCharacterCount = 10
        var isValid: Bool
        
        // TODO: remove any formatting that may have already been entered
        
        // bail out if textField is empty or too short/long
        let trimmedNumber = phoneNumber.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
        if trimmedNumber.isEmpty || trimmedNumber.characters.count < validCharacterCount || trimmedNumber.characters.count > validCharacterCount {
            
            print("empty field or number not long enough")
            
            isValid = false
            return isValid
        }
        
        // bail out if non-alphanumeric characters are present
        let validCharacters = NSCharacterSet(charactersInString: "+0123456789").invertedSet
        let inputString:[String] = trimmedNumber.componentsSeparatedByCharactersInSet(validCharacters)
        
        if trimmedNumber != inputString.first {
            
            print("invalid characters present")
            
            isValid = false
            return isValid
        }
        
        // format the valid number
        let validNumber = formatValidPhoneNumber(trimmedNumber)
        
        isValid = true
        return isValid
    }
    
    
    // MARK: Phone Number Formatting
    
    func formatValidPhoneNumber(phoneNumber: String) -> String {
        
        // add space after #4, and after #3
        let firstIndex      = 4
        var formattedNumber = phoneNumber.insert(" ", index: firstIndex)
        
        let secondIndex = formattedNumber.characters.count-3
        formattedNumber = formattedNumber.insert(" ", index: secondIndex)
        
        // add area code to start of string
        let aussieAreaCode  = "+61 "
        formattedNumber = formattedNumber.insert(aussieAreaCode, index: 0)
        
        return formattedNumber
    }
}