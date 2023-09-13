//
//  PayingTogetherController.swift
//  Billy
//
//  Created by Buse Karabıyık on 12.09.2023.
//

import UIKit

class PayingTogetherController : UIViewController {
    
    var uiView = PayingTogetherView()
    var calculationLogic = CalculationLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.97, green: 0.94, blue: 0.90, alpha: 1.00)
        uiView.setupViews(on: view, target: self, action: #selector(buttonPressed), tipAction: #selector(tipButtonPressed), numberAction: #selector(plusMinusPressed))
    }
    
    @objc func plusMinusPressed(_ sender: UIButton?) {
        calculationLogic.calculateNewNumber(button: sender)
    }
    
    @objc func tipButtonPressed(_ sender: UIButton?) {
        for button in tipButtons {
            button.configuration?.baseForegroundColor = UIColor(red: 0.84, green: 0.44, blue: 0.29, alpha: 1.00)
            button.configuration?.baseBackgroundColor = UIColor(red: 0.97, green: 0.94, blue: 0.90, alpha: 1.00)
        }
        sender?.configuration?.baseBackgroundColor = UIColor(red: 0.84, green: 0.44, blue: 0.29, alpha: 1.00)
        sender?.configuration?.baseForegroundColor = UIColor(red: 0.97, green: 0.94, blue: 0.90, alpha: 1.00)
        calculationLogic.determineTip(button: sender)
    }
    
    @objc func buttonPressed() {
        calculationLogic.calculateAmount()
        let destinationVC = ResultsPageController(text: "Amount to be paid per person: ")
        destinationVC.modalPresentationStyle = .fullScreen
        self.present(destinationVC, animated: true)
        
    }
    
}
