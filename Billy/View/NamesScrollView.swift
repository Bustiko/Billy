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
        Variables.stackView = uiFunctions.makeStackView()
        
        addSubview(Variables.stackView)
        
        NSLayoutConstraint.activate([
            Variables.stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            Variables.stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            Variables.stackView.widthAnchor.constraint(equalTo: self.widthAnchor, constant: -50),
            Variables.stackView.topAnchor.constraint(equalTo: self.topAnchor),
            Variables.stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
   
    
}
