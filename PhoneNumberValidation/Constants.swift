//
//  Constants.swift
//  PhoneNumberValidation
//
//  Created by Carla Alexander on 2016-03-21.
//  Copyright © 2016 MagicNoodles. All rights reserved.
//

import Foundation

extension String {
    
    // Note: This would not be my preferred way to insert characters into a String but had to make do given time constraints!
    
    func insert(string: String, index: Int) -> String {
        
        return String(self.characters.prefix(index)) + string + String(self.characters.suffix(self.characters.count-index))
    }
}