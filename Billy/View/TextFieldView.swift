//
//  TextFieldView.swift
//  Billy
//
//  Created by Buse Karabıyık on 12.09.2023.
//

import UIKit

var textField = UITextField()

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
        self.backgroundColor = UIColor.secondarySystemFill
        
        textField =  uiFunctions.makeTextField(withPlaceHolder: placeHolder, textSize: textSize)

        
        self.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            textField.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
    }
}
