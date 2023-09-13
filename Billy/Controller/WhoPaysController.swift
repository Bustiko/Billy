//
//  WhoPaysController.swift
//  Billy
//
//  Created by Buse Karabıyık on 13.09.2023.
//

import UIKit

class WhoPaysController : UIViewController {
    
    let uiView = WhoPaysView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        uiView.setupViews(on: view)
    }
}
