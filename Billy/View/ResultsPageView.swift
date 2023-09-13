//
//  ResultsPageView.swift
//  Billy
//
//  Created by Buse Karabıyık on 13.09.2023.
//

import UIKit

struct ResultsPageView {
    
    let uiFunctions = UIFunctions()
    
    internal func setupViews(on view : UIView) {
        let resultView = ResultView(text: "John", subText: "is paying")
        let button = uiFunctions.makeButton(withText: "Main Menu", withTextSize: 20, configuration: UIButton.Configuration.tinted())
        
        view.addSubview(resultView)
        resultView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        
        NSLayoutConstraint.activate([
            resultView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 160),
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
