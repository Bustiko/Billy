//
//  TextFieldView.swift
//  Billy
//
//  Created by Buse Karabıyık on 12.09.2023.
//

import UIKit

class TextFieldView : UIView {
    
    let uiFunctions = UIFunctions()
    let placeHolder : String
    let textSize : CGFloat
    
    init(placeHolder : String, textSize : CGFloat) {
        self.placeHolder = placeHolder
        self.textSize = textSize
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func setupViews() {
        self.backgroundColor = UIColor(red: 0.97, green: 0.82, blue: 0.73, alpha: 1.00)
        
        Variables.textField =  uiFunctions.makeTextField(withPlaceHolder: placeHolder, textSize: textSize)

        
        self.addSubview(Variables.textField)
        Variables.textField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            Variables.textField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            Variables.textField.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
    }
}
