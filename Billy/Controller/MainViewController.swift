//
//  ViewController.swift
//  Billy
//
//  Created by Buse Karabıyık on 12.09.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    var uiFunctions = MainScreenView()

    override func viewDidLoad() {
        super.viewDidLoad()
        uiFunctions.setupViews(on: view, target: self, action: #selector(buttonPressed))
    }
    
    @objc func buttonPressed(_ sender : UIButton?) {
        if sender?.titleLabel?.text == "We're paying together" {
            let dVC = PayingTogetherController()
            dVC.modalPresentationStyle = .fullScreen
            self.present(dVC, animated: true)
        }else {
            
        }
        
    }


}
