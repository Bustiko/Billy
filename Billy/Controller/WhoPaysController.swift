//
//  WhoPaysController.swift
//  Billy
//
//  Created by Buse Karabıyık on 13.09.2023.
//

import UIKit

class WhoPaysController : UIViewController {
    
    let uiView = WhoPaysView()
    var names: [String] = []
    var addingNameLogic = AddingNameLogic(names: [])
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.97, green: 0.94, blue: 0.90, alpha: 1.00)
        uiView.setupViews(on: view, target: self, action: #selector(buttonPressed))
        addingNameLogic = AddingNameLogic(names: names)
    }
    
    
    @objc func buttonPressed(_ sender: UIButton?) {
        addingNameLogic.addNames(button: sender, vc: self)
        if sender?.titleLabel?.text == "Done" {
            let destinationVC = ResultsPageController(text: "The lucky one is: ")
            destinationVC.modalPresentationStyle = .fullScreen
            self.present(destinationVC, animated: true)
        }
    }
}

