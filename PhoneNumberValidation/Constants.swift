//
//  Constants.swift
//  PhoneNumberValidation
//
//  Created by Carla Alexander on 2016-03-21.
//  Copyright © 2016 MagicNoodles. All rights reserved.
//

import Foundation

extension String {
    
    func insert(string: String, index: Int) -> String {
        
        return String(self.characters.prefix(index)) + string + String(self.characters.suffix(self.characters.count-index))
    }
}