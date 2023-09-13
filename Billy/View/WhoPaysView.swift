//
//  WhoPaysView.swift
//  Billy
//
//  Created by Buse Karabıyık on 13.09.2023.
//

import UIKit

struct WhoPaysView {
    
    let uiFunctions = UIFunctions()
    
    
    internal func setupViews(on view : UIView) {
        let label = uiFunctions.makeLabel(withText: "Enter each name one by one :", withSize: 20, withFont: "ChalkboardSE-Regular", alignment: .left)
        let scrollView = NamesScrollView()
        let plusButton = uiFunctions.makeButton(withText: "+", withTextSize: 40, configuration: UIButton.Configuration.tinted())
        
        
        view.addSubview(label)
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(plusButton)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            scrollView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -70),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            plusButton.heightAnchor.constraint(equalToConstant: 60),
            plusButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 165),
            plusButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -165),
            plusButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
            
        ])
        
        
    }
}
