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
        let textField = uiFunctions.makeTextField(withPlaceHolder: placeHolder, textSize: textSize)
        
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            textField.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
    }
}
