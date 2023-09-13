//
//  PayingTogetherController.swift
//  Billy
//
//  Created by Buse Karabıyık on 12.09.2023.
//

import UIKit

class PayingTogetherController : UIViewController {
    
    var uiView = PayingTogetherView()
    let calculationLogic = CalculationLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        uiView.setupViews(on: view, target: self, action: #selector(buttonPressed), tipAction: #selector(tipButtonPressed), numberAction: #selector(plusMinusPressed))
    }
    
    @objc func plusMinusPressed(_ sender: UIButton?) {
        calculationLogic.calculateNewNumber(button: sender)
    }
    
    @objc func tipButtonPressed(_ sender: UIButton?) {
        calculationLogic.determineTip(button: sender)
    }
    
    @objc func buttonPressed() {
        let destinationVC = ResultsPageController()
        destinationVC.modalPresentationStyle = .fullScreen
        self.present(destinationVC, animated: true)
    }
    
}
