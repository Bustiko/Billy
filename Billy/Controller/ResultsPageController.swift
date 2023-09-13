//
//  ResultsPageController.swift
//  Billy
//
//  Created by Buse Karabıyık on 13.09.2023.
//

import UIKit


class ResultsPageController : UIViewController {
    
    let uiView = ResultsPageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        uiView.setupViews(on: view)
        
    }
}
