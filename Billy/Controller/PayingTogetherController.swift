//
//  PayingTogetherController.swift
//  Billy
//
//  Created by Buse Karabıyık on 12.09.2023.
//

import UIKit

class PayingTogetherController : UIViewController {
    
    var uiView = PayingTogetherView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        uiView.setupViews(on: view, target: self, action: #selector(buttonPressed), tipAction: #selector(tipButtonPressed))
    }
    
    @objc func tipButtonPressed(_ sender: UIButton?) {
        switch sender?.titleLabel?.text {
        case "0%":
//            print("tip: 0%")
        case "10%":
//            print("tip: 10%")
        case "15%":
//            print("tip: 15%")
        case "20%":
//            print("tip: 20%")
        default: break
        }
    }
    
    @objc func buttonPressed() {
        let destinationVC = ResultsPageController()
        destinationVC.modalPresentationStyle = .fullScreen
        self.present(destinationVC, animated: true)
        
//        print(textField.text ?? 10)
//        print(numberLabel.text!)
    }
    
}
