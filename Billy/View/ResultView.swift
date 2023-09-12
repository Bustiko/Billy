//
//  ResultView.swift
//  Billy
//
//  Created by Buse Karabıyık on 12.09.2023.
//

import UIKit

class ResultView : UIView {
    
    let uiFunctions = UIFunctions()
    let text : String
    
    init(text : String) {
        self.text = text
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func setupViews() {
        self.backgroundColor = UIColor.systemTeal
        
        let label = uiFunctions.makeLabel(withText: text, withSize: 50, withFont: "ChalkboardSE-Regular", alignment: .center)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
    }
}
