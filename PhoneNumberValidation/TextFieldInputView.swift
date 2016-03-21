//
//  TextFieldInputView.swift
//  PhoneNumberValidation
//
//  Created by Carla Alexander on 2016-03-21.
//  Copyright © 2016 MagicNoodles. All rights reserved.
//

import Foundation
import UIKit

final class TextFieldInputView: UIView, UITextFieldDelegate {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // UI
        //self.backgroundColor = .blueColor()
        //displayTextField()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: TextField
    
    func displayTextField() {
    
        let textFieldXLoc = (self.frame.size.width/2)-(300/2)
        let textFieldYLoc = (self.frame.size.height/2)-(30/2)
        
        let textField = UITextField(frame: CGRect(x: textFieldXLoc, y: textFieldYLoc, width: 300, height: 50))
        textField.backgroundColor           = .yellowColor()
        textField.userInteractionEnabled    = true
        textField.delegate = self
            
        self.addSubview(textField)
    }
    
    
    // MARK: UITextField Delegate Methods
    
    func textFieldDidEndEditing(textField: UITextField) {
        print("user hit enter")
    }
}