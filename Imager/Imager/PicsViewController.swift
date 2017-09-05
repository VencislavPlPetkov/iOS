//
//  PicsViewController.swift
//  Imager
//
//  Created by Vencislav Petkov on 9/4/17.
//  Copyright © 2017 Vencislav Petkov. All rights reserved.
//

import UIKit

class PicsViewController: UIViewController, UISplitViewControllerDelegate {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.splitViewController?.delegate = self
        
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let url = DemoURL.PICS[segue.identifier ?? ""]{
        
            if let imageVC = (segue.destination.contents as? ImageViewController){
            
                
                imageVC.imageURL = url
                imageVC.title = (sender as? UIButton)?.currentTitle
                
            }
            
        }
        
    }
    
    
    func splitViewController(_ splitViewController: UISplitViewController,
                             collapseSecondary secondaryViewController: UIViewController,
                             onto primaryViewController: UIViewController
    ) -> Bool {
        
        if primaryViewController.contents == self {
            
            if let ivc = secondaryViewController.contents as? ImageViewController, ivc.imageURL == nil {
                
                return true
                
            }
        
        }
        return false
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













