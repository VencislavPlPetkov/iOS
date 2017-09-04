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

    
    fileprivate var imageView = UIImageView()
    
    
    private var image:UIImage? {
        
        get {
            
            return imageView.image
            
        } set {
            
            imageView.image = newValue
            imageView.sizeToFit()
            scrollView?.contentSize = imageView.frame.size

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
        //imageURL = DemoURL.building
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if image == nil {
            fetchImage()
        }
        
    }
    
    
    @IBOutlet weak var scrollView: UIScrollView!{
    
        didSet{
            scrollView.delegate = self
            scrollView.minimumZoomScale = 0.03
            scrollView.maximumZoomScale = 2.0
            scrollView.contentSize = imageView.frame.size
            scrollView.addSubview(imageView)
        
        }
        
    }
    
}



extension ImageViewController : UIScrollViewDelegate {

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }


}








