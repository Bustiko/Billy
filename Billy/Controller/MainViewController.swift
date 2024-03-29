//
//  ViewController.swift
//  Billy
//
//  Created by Buse Karabıyık on 12.09.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    var uiView = MainScreenView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.97, green: 0.94, blue: 0.90, alpha: 1.00)
        uiView.setupViews(on: view, target: self, action: #selector(buttonPressed))
    }
    
    @objc func buttonPressed(_ sender : UIButton?) {
        if sender?.titleLabel?.text == "We're paying together" {
            let dVC = PayingTogetherController()
            dVC.modalPresentationStyle = .fullScreen
            self.present(dVC, animated: true)
        }else {
            let destinationVC = WhoPaysController()
            destinationVC.modalPresentationStyle = .fullScreen
            self.present(destinationVC, animated: true)
        }
        
    }


}

