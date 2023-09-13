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
        uiView.setupViews(on: view)
        view.backgroundColor = .white
        
    }
    
}
