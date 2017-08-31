//
//  ViewController.swift
//  Calc
//
//  Created by Vencislav Petkov on 8/29/17.
//  Copyright © 2017 Vencislav Petkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!

    
    var userIsTyping:Bool = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
        var digit = sender.currentTitle!
        if userIsTyping {
            let textCurrentlyInDisplay = display!.text!
            display!.text = textCurrentlyInDisplay + digit
        } else{
            display!.text = digit
            userIsTyping = true
        }
        
        
    }
    
    var displayValue: Double {
    
        get{
            return Double(display.text!)!
        }
    
        set {
            display.text = String(newValue)
        }
    }
    
    
    private var main = CalculatorMain()
    
    
    @IBAction func performOperation(_ sender: UIButton) {
        
        if userIsTyping {
            main.setOperand(operand: displayValue)
            userIsTyping = false
        }
        
        
        
        if let mathematicalSymbol = sender.currentTitle{
        
            main.performOperation(mathematicalSymbol)
            
        }
       
        if let result = main.result {
        
            displayValue = result
        
        }
        
    }
    

    
    
    
}















