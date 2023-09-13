//
//  NamesScrollView.swift
//  Billy
//
//  Created by Buse Karabıyık on 13.09.2023.
//

import UIKit

var stackView = UIStackView()

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
        stackView = uiFunctions.makeStackView()
        
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
