//
//  PicsViewController.swift
//  Imager
//
//  Created by Vencislav Petkov on 9/4/17.
//  Copyright © 2017 Vencislav Petkov. All rights reserved.
//

import UIKit

class PicsViewController: UIViewController {

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let url = DemoURL.PICS[segue.identifier ?? ""]{
        
            if let imageVC = (segue.destination.contents as? ImageViewController){
            
                
                imageVC.imageURL = url
                imageVC.title = (sender as? UIButton)?.currentTitle
                
            }
            
        }
        
    }
    

}

extension UIViewController{

    var contents: UIViewController{
    
        if let navCon = self as? UINavigationController{
        
            return navCon.visibleViewController ?? self
        
        } else {
        
            return self
            
        }
    
    }
    


}













