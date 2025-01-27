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
    
    internal mutating func setupViews(on view : UIView, target : Any?, action : Selector?, tipAction : Selector?, numberAction : Selector?) {
        let label1 = uiFunctions.makeLabel(withText: "Bill Total :", withSize: 20, withFont: font, alignment: .left)
        let textFieldView = TextFieldView(placeHolder: "27.56", textSize: 40)
        
        let label2 = uiFunctions.makeLabel(withText: "Number of people :", withSize: 20, withFont: font, alignment: .left)
        let minusButton = uiFunctions.makePlusMinusButton(withText: "-")
        Variables.numberLabel = uiFunctions.makeLabel(withText: "1", withSize: 30, withFont: font, alignment: .center)
        let plusButton = uiFunctions.makePlusMinusButton(withText: "+")
        
        let label3 = uiFunctions.makeLabel(withText: "Tip :", withSize: 20, withFont: font, alignment: .left)
        
        for text in tipButtonTexts {
            let button = uiFunctions.makeButton(withText: text, withTextSize: 25, configuration: UIButton.Configuration.plain())
            if Variables.tipButtons.count < 4 {
                Variables.tipButtons.append(button)
            }
        }
        
        
        let bigButton = uiFunctions.makeButton(withText: "Calculate", withTextSize: 20, configuration: UIButton.Configuration.tinted())
        
        if let safeAction = action {
            bigButton.addTarget(target, action: safeAction, for: .touchUpInside)
        }
        
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(minusButton)
        view.addSubview(Variables.numberLabel)
        view.addSubview(plusButton)
        view.addSubview(bigButton)
        
        view.addSubview(textFieldView)
        textFieldView.translatesAutoresizingMaskIntoConstraints = false
        
        for button in Variables.tipButtons {
            view.addSubview(button)
            button.configuration?.baseForegroundColor = UIColor(red: 0.84, green: 0.44, blue: 0.29, alpha: 1.00)
            button.configuration?.baseBackgroundColor = UIColor(red: 0.97, green: 0.94, blue: 0.90, alpha: 1.00)
            if let safeTipAction = tipAction {
                button.addTarget(target, action: safeTipAction, for: .touchUpInside)
            }
            
        }
        
        if let safeNumberAction = numberAction {
            minusButton.addTarget(self, action: safeNumberAction, for: .touchUpInside)
            plusButton.addTarget(self, action: safeNumberAction, for: .touchUpInside)
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
            minusButton.trailingAnchor.constraint(equalTo: Variables.numberLabel.leadingAnchor, constant: -90),
            minusButton.heightAnchor.constraint(equalToConstant: 40),
            minusButton.widthAnchor.constraint(equalToConstant: 50),
            
            Variables.numberLabel.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 45),
            Variables.numberLabel.bottomAnchor.constraint(equalTo: label3.topAnchor, constant: -47),
            
            plusButton.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 45),
            plusButton.bottomAnchor.constraint(equalTo: label3.topAnchor, constant: -47),
            plusButton.heightAnchor.constraint(equalToConstant: 40),
            plusButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),

            plusButton.widthAnchor.constraint(equalToConstant: 50),
            
            label3.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 16),
            label3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            bigButton.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 16),
            bigButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            bigButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -34),
            bigButton.heightAnchor.constraint(equalToConstant: 70)
            
        ])
        
        for i in 0..<Variables.tipButtons.count {
            if i == 0 {
                Variables.tipButtons[i].configuration?.baseBackgroundColor = UIColor(red: 0.84, green: 0.44, blue: 0.29, alpha: 1.00)
                Variables.tipButtons[i].configuration?.baseForegroundColor = UIColor(red: 0.97, green: 0.94, blue: 0.90, alpha: 1.00)
                Variables.tipButtons[i].topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 22).isActive = true
                Variables.tipButtons[i].leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
                Variables.tipButtons[i].bottomAnchor.constraint(equalTo: bigButton.topAnchor, constant: -125).isActive = true
            }else if i != 0 && i != Variables.tipButtons.count - 1 {
                Variables.tipButtons[i].topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 22).isActive = true
                Variables.tipButtons[i].bottomAnchor.constraint(equalTo: bigButton.topAnchor, constant: -125).isActive = true
                Variables.tipButtons[i].leadingAnchor.constraint(equalTo: Variables.tipButtons[i-1].trailingAnchor, constant: 20).isActive = true
                Variables.tipButtons[i].trailingAnchor.constraint(equalTo: Variables.tipButtons[i+1].leadingAnchor, constant: -20).isActive = true
            }else {
                Variables.tipButtons[i].topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 22).isActive = true
                Variables.tipButtons[i].bottomAnchor.constraint(equalTo: bigButton.topAnchor, constant: -125).isActive = true
                Variables.tipButtons[i].trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
            }
        }
        
        
        
    }
}
