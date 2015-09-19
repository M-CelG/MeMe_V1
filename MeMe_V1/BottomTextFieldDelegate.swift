//
//  ImagePickerDelegate.swift
//  MeMe_V1
//
//  Created by Manish Sharma on 9/10/15.
//  Copyright (c) 2015 CelG Mobile LLC. All rights reserved.
//

import Foundation
import UIKit

class BottomTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        // temp storage for UI text Field Text
        var newText = textField.text as NSString!
        // Assign replacement string to temp storage
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        newText = newText.uppercaseString
        textField.text = newText as String
        return false
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        keyboardShiftUp = true
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        keyboardShiftUp = false
        keyboardShiftDown = true
        textField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        keyboardShiftUp = false
//        keyboardShiftDown = true
        textField.resignFirstResponder()
        return true
    }

}

