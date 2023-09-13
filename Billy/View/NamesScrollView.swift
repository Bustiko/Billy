//
//  NamesScrollView.swift
//  Billy
//
//  Created by Buse Karabıyık on 13.09.2023.
//

import UIKit

class NamesScrollView : UIScrollView {
    
    let uiFunctions = UIFunctions()
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func setupView() {
        let stackView = uiFunctions.makeStackView()
        
        for _ in 0...25 {
            let textFieldView = TextFieldView(placeHolder: "Name", textSize: 25)
            textFieldView.translatesAutoresizingMaskIntoConstraints = false
            textFieldView.heightAnchor.constraint(equalToConstant: 50).isActive = true
            stackView.addArrangedSubview(textFieldView)
            
        }
        
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            stackView.widthAnchor.constraint(equalTo: self.widthAnchor, constant: -50),
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
   
    
}
