//
//  ResultsPageView.swift
//  Billy
//
//  Created by Buse Karabıyık on 13.09.2023.
//

import UIKit

struct ResultsPageView {
    
    let uiFunctions = UIFunctions()
    var calculationLogic = CalculationLogic()
    
    var text: String
    
    init(text: String) {
        self.text = text
    }
    
    internal mutating func setupViews(on view : UIView, target: Any?, action: Selector?) {
        let label = uiFunctions.makeLabel(withText: text, withSize: 20, withFont: "ChalkboardSE-Regular", alignment: .left)
        let resultView = ResultView()
        let button = uiFunctions.makeButton(withText: "Main Menu", withTextSize: 20, configuration: UIButton.Configuration.tinted())
        
        view.addSubview(label)
        view.addSubview(resultView)
        resultView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        if let safeAction = action {
            button.addTarget(target, action: safeAction, for: .touchUpInside)
        }
        
        
        
        NSLayoutConstraint.activate([
            
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            resultView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            resultView.heightAnchor.constraint(equalToConstant: 210),
            resultView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            resultView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            button.heightAnchor.constraint(equalToConstant: 70)
            
        ])
    }
}
