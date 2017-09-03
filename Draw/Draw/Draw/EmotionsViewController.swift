//
//  EmotionsViewController.swift
//  Draw
//
//  Created by Vencislav Petkov on 9/1/17.
//  Copyright © 2017 Vencislav Petkov. All rights reserved.
//

import UIKit

class EmotionsViewController: UIViewController {

    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationViewController = segue.destination
        
        if let faceViewController = destinationViewController as? FaceViewController{
        
            if let identifier = segue.identifier{
                
            
            }
        
        
        }
        
        
    }
    

}
