//
//  AddingNameLogic.swift
//  Billy
//
//  Created by Buse Karabıyık on 13.09.2023.
//

import UIKit


struct AddingNameLogic {
    
    var names: [String] = []
    
    init(names: [String]) {
        self.names = names
    }
    
    internal mutating func addNames(button: UIButton?, vc: UIViewController) {
        if let safeText = Variables.textField.text{
            if button?.titleLabel?.text == "+" {
                names.append(safeText)
                let textFieldView = TextFieldView(placeHolder: "Name", textSize: 25)
                textFieldView.translatesAutoresizingMaskIntoConstraints = false
                textFieldView.heightAnchor.constraint(equalToConstant: 50).isActive = true
                Variables.stackView.addArrangedSubview(textFieldView)
            }else {
                names.append(safeText)
                let randomNumber = Int.random(in: 0..<names.count)
                Variables.resultText = names[randomNumber]
            }
        }
    }
    
}

