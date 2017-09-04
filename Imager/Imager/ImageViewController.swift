//
//  ImageViewController.swift
//  Imager
//
//  Created by Vencislav Petkov on 9/4/17.
//  Copyright © 2017 Vencislav Petkov. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    var imageURL: URL? {
        
        didSet {
            
            image = nil
            if view.window != nil {
                fetchImage()
                
            }
        }
        
        
    }

    
    private var imageView = UIImageView()
    
    
    private var image:UIImage? {
        
        get {
            
            return imageView.image
            
        } set {
            
            imageView.image = newValue
            imageView.sizeToFit()
            
        }
        
    }

    
    private func fetchImage(){
        
        if let url = imageURL{
            
            let urlContents = try? Data(contentsOf: url)
            
            if let imageData = urlContents{
                
                
                image = UIImage(data: imageData)
            }
            
            
            
        }
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        
        
    }
    
    
    
    
    
    
    
}












