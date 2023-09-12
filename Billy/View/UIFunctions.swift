//
//  UIFunctions.swift
//  Billy
//
//  Created by Buse Karabıyık on 12.09.2023.
//

import UIKit

struct UIFunctions {
    
    internal func makeLabel(withText text : String, withSize size : CGFloat, withFont font : String, alignment : NSTextAlignment) -> UILabel {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = text
        label.textColor = UIColor.black
        label.font = UIFont(name: font, size: size)
        label.textAlignment = alignment
        
        return label
    }
    
    
    internal func makeButton(withText text : String, withTextSize size : CGFloat, configuration : UIButton.Configuration) -> UIButton {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        var config = configuration
        
        var container = AttributeContainer()
        container.font = UIFont(name: "Chalkboard SE-Regular", size: size)
        
        config.attributedTitle = AttributedString(text, attributes: container)
        
        
        return button
    }
    
    
    internal func makeTextField(withPlaceHolder placeHolder : String, textSize size : CGFloat) -> UITextField {
        
        let textField = UITextField()
        
        textField.placeholder = placeHolder
        textField.font = UIFont(name: "Chalkboard SE-Regular", size: size)
        
        
        
        return textField
    }
    
    
    
}