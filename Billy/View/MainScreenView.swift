//
//  MainScreenView.swift
//  Billy
//
//  Created by Buse Karabıyık on 12.09.2023.
//

import UIKit

struct MainScreenView {
    
    let uiFunctions = UIFunctions()
    var buttons : [UIButton] = []
    
    internal mutating func setupViews(on view : UIView, target : Any?, action : Selector?) {
        let label1 = uiFunctions.makeLabel(withText: "Calculate :", withSize: 20, withFont: "ChalkboardSE-Regular", alignment: .left)
        let button1 = uiFunctions.makeButton(withText: "We're paying together", withTextSize: 20, configuration: UIButton.Configuration.tinted())
        
        let label2 = uiFunctions.makeLabel(withText: "For Fun :", withSize: 20, withFont: "ChalkboardSE-Regular", alignment: .left)
        let button2 = uiFunctions.makeButton(withText: "LET'S SEE WHO'S PAYING!", withTextSize: 20, configuration: UIButton.Configuration.filled())
        
        view.addSubview(label1)
        view.addSubview(button1)
        
        view.addSubview(label2)
        view.addSubview(button2)
        
        buttons.append(button1)
        buttons.append(button2)
        
        
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            label1.bottomAnchor.constraint(equalTo: button1.topAnchor, constant: -23),
            label1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            label1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            button1.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 23),
            button1.bottomAnchor.constraint(equalTo: label2.topAnchor, constant: -48),
            button1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            button1.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            button1.heightAnchor.constraint(equalToConstant: 70),
            
            label2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 48),
            label2.bottomAnchor.constraint(equalTo: button2.topAnchor, constant: -22),
            label2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            label2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            button2.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 22),
            button2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            button2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            button2.heightAnchor.constraint(equalToConstant: 70)
        ])
        
        for button in buttons {
            if let safeAction = action {
                button.addTarget(target, action: safeAction, for: .touchUpInside)
            }
        }
    }
    
    
}
