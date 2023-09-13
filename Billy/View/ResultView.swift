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
    let subText : String
    
    init(text : String, subText : String) {
        self.text = text
        self.subText = subText
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func setupViews() {
        self.backgroundColor = UIColor.systemTeal
        
        let label = uiFunctions.makeLabel(withText: text, withSize: 50, withFont: "ChalkboardSE-Regular", alignment: .center)
        
        let subText = uiFunctions.makeLabel(withText: subText, withSize: 20, withFont: "System", alignment: .right)
        
        addSubview(label)
        addSubview(subText)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            subText.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            subText.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            subText.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
        
    }
}
