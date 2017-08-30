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
    
    

}
 
