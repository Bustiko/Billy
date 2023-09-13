//
//  ResultsPageController.swift
//  Billy
//
//  Created by Buse Karabıyık on 13.09.2023.
//

import UIKit


class ResultsPageController : UIViewController {
    
    var text: String
    
    init(text: String) {
        self.text = text
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        var uiView = ResultsPageView(text: text)
        uiView.setupViews(on: view, target: self, action: #selector(buttonPressed))
    }
    
    @objc func buttonPressed() {
        let destinationVC = MainViewController()
        destinationVC.modalPresentationStyle = .fullScreen
        self.present(destinationVC, animated: true)
    }
}
