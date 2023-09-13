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
        uiView.setupViews(on: view, target: self, action: #selector(buttonPressed))
    }
    
    @objc func buttonPressed() {
        let destinationVC = ResultsPageController()
        destinationVC.modalPresentationStyle = .fullScreen
        self.present(destinationVC, animated: true)
    }
    
}
