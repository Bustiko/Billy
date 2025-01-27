//
//  CalculationLogic.swift
//  Billy
//
//  Created by Buse Karabıyık on 13.09.2023.
//

import UIKit


struct CalculationLogic {
    
    var amountPerPerson = 0.0
    
    internal mutating func calculateAmount() {
        
        if let safeText = Variables.textField.text, let safeNumber = Variables.numberLabel.text {
            if let totalAmount = Double(safeText), let totalNumber = Double(safeNumber) {
                amountPerPerson = (totalAmount + (totalAmount*Double(Variables.tipPercentage)/100)) / totalNumber
            }
        }
        
        Variables.resultText = String(format: "%.2f", amountPerPerson)
    }
    
    internal func calculateNewNumber(button: UIButton?) {
        if button?.titleLabel?.text == "-" {
            if let safeText = Variables.numberLabel.text {
                if let safeNumber = Int(safeText) {
                    if safeNumber != 1 {
                        Variables.numberLabel.text = String(safeNumber - 1)
                    }
                    
                }
            }
        }else {
            if let safeText = Variables.numberLabel.text {
                if let safeNumber = Int(safeText) {
                    Variables.numberLabel.text = String(safeNumber + 1)
                }
            }
        }
    }
    
    internal func determineTip(button: UIButton?) {
        switch button?.titleLabel?.text {
        case "0%":
            Variables.tipPercentage = 0
        case "10%":
            Variables.tipPercentage = 10
        case "15%":
            Variables.tipPercentage = 15
        case "20%":
            Variables.tipPercentage = 20
        default: Variables.tipPercentage = 0
        }
    }
}
