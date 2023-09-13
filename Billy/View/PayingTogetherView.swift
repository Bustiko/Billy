//
//  PayingTogetherView.swift
//  Billy
//
//  Created by Buse Karabıyık on 12.09.2023.
//
import UIKit


struct PayingTogetherView {
    
    let uiFunctions = UIFunctions()
    let font = "ChalkboardSE-Regular"
    
    let tipButtonTexts = [
        "0%",
        "10%",
        "15%",
        "20%"
    ]
    
    var tipButtons : [UIButton] = []
    
    internal mutating func setupViews(on view : UIView) {
        let label1 = uiFunctions.makeLabel(withText: "Bill Total :", withSize: 20, withFont: font, alignment: .left)
        let textFieldView = TextFieldView(placeHolder: "27.56", textSize: 40)
        
        let label2 = uiFunctions.makeLabel(withText: "Number of people :", withSize: 20, withFont: font, alignment: .left)
        let minusButton = uiFunctions.makeButton(withText: "-", withTextSize: 40, configuration: UIButton.Configuration.tinted())
        let numberLabel = uiFunctions.makeLabel(withText: "2", withSize: 30, withFont: font, alignment: .center)
        let plusButton = uiFunctions.makeButton(withText: "+", withTextSize: 40, configuration: UIButton.Configuration.tinted())
        
        let label3 = uiFunctions.makeLabel(withText: "Tip :", withSize: 20, withFont: font, alignment: .left)
        for text in tipButtonTexts {
            let button = uiFunctions.makeButton(withText: text, withTextSize: 25, configuration: UIButton.Configuration.plain())
            tipButtons.append(button)
        }
        
        
        let bigButton = uiFunctions.makeButton(withText: "Calculate", withTextSize: 20, configuration: UIButton.Configuration.tinted())
        
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(minusButton)
        view.addSubview(numberLabel)
        view.addSubview(plusButton)
        view.addSubview(bigButton)
        
        view.addSubview(textFieldView)
        textFieldView.translatesAutoresizingMaskIntoConstraints = false
        
        for button in tipButtons {
            view.addSubview(button)
        }
        
        
        NSLayoutConstraint.activate([
            label1.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 16),
            label1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label1.bottomAnchor.constraint(equalTo: textFieldView.topAnchor, constant: -10),
            
            textFieldView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            textFieldView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            textFieldView.heightAnchor.constraint(equalToConstant: 130),
            
            label2.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 16),
            label2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            label2.topAnchor.constraint(equalTo: textFieldView.bottomAnchor, constant: 33),
            
            minusButton.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 45),
            minusButton.bottomAnchor.constraint(equalTo: label3.topAnchor, constant: -47),
            minusButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            minusButton.trailingAnchor.constraint(equalTo: numberLabel.leadingAnchor, constant: -96),
            minusButton.heightAnchor.constraint(equalToConstant: 40),
            
            numberLabel.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 45),
            numberLabel.bottomAnchor.constraint(equalTo: label3.topAnchor, constant: -47),
            
            plusButton.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 45),
            plusButton.bottomAnchor.constraint(equalTo: label3.topAnchor, constant: -47),
            plusButton.heightAnchor.constraint(equalToConstant: 40),
            plusButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            plusButton.leadingAnchor.constraint(equalTo: numberLabel.trailingAnchor, constant: 100),
            
            label3.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 16),
            label3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            bigButton.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 16),
            bigButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            bigButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -34),
            bigButton.heightAnchor.constraint(equalToConstant: 70)
            
        ])
        
        for i in 0..<tipButtons.count {
            if i == 0 {
                tipButtons[i].topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 22).isActive = true
                tipButtons[i].leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
                tipButtons[i].bottomAnchor.constraint(equalTo: bigButton.topAnchor, constant: -125).isActive = true
            }else if i != 0 && i != tipButtons.count - 1 {
                tipButtons[i].topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 22).isActive = true
                tipButtons[i].bottomAnchor.constraint(equalTo: bigButton.topAnchor, constant: -125).isActive = true
                tipButtons[i].leadingAnchor.constraint(equalTo: tipButtons[i-1].trailingAnchor, constant: 20).isActive = true
                tipButtons[i].trailingAnchor.constraint(equalTo: tipButtons[i+1].leadingAnchor, constant: -20).isActive = true
            }else {
                tipButtons[i].topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 22).isActive = true
                tipButtons[i].bottomAnchor.constraint(equalTo: bigButton.topAnchor, constant: -125).isActive = true
                tipButtons[i].trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
            }
        }
        
        
        
    }
}
