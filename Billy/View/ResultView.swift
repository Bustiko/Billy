//
//  ResultView.swift
//  Billy
//
//  Created by Buse Karabıyık on 12.09.2023.
//

import UIKit

class ResultView : UIView {
    
    let uiFunctions = UIFunctions()
    
    init() {
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func setupViews() {
        self.backgroundColor = UIColor(red: 0.97, green: 0.82, blue: 0.73, alpha: 1.00)
        
        let label = uiFunctions.makeLabel(withText: Variables.resultText, withSize: 50, withFont: "ChalkboardSE-Regular", alignment: .center)
        
        addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
    }
}
