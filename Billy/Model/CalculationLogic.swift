//
//  CalculationLogic.swift
//  Billy
//
//  Created by Buse Karabıyık on 13.09.2023.
//

import UIKit

var tipPercentage = 0


struct CalculationLogic {
    
    var amountPerPerson = 0.0
    
    internal mutating func calculateAmount() -> String {
        
        if let safeText = textField.text, let safeNumber = numberLabel.text {
            if let totalAmount = Double(safeText), let totalNumber = Double(safeNumber) {
                amountPerPerson = (totalAmount + (totalAmount*Double(tipPercentage)/100)) / totalNumber
            }
        }
        
        return String(format: "%.2f", amountPerPerson)
    }
    
    internal func calculateNewNumber(button: UIButton?) {
        if button?.titleLabel?.text == "-" {
            if let safeText = numberLabel.text {
                if let safeNumber = Int(safeText) {
                    if safeNumber != 1 {
                        numberLabel.text = String(safeNumber - 1)
                    }
                    
                }
            }
        }else {
            if let safeText = numberLabel.text {
                if let safeNumber = Int(safeText) {
                    numberLabel.text = String(safeNumber + 1)
                }
            }
        }
    }
    
    internal func determineTip(button: UIButton?) {
        switch button?.titleLabel?.text {
        case "0%":
            tipPercentage = 0
        case "10%":
            tipPercentage = 10
        case "15%":
            tipPercentage = 15
        case "20%":
            tipPercentage = 20
        default: tipPercentage = 0
        }
    }
}
