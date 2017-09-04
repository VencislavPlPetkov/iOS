//
//  DemoURL.swift
//  Imager
//
//  Created by Vencislav Petkov on 9/4/17.
//  Copyright © 2017 Vencislav Petkov. All rights reserved.
//

import Foundation


struct DemoURL{

    
    static let building = URL(string: "http://jonvilma.com/images/building-1.jpg")
    
    
    static var PICS: Dictionary<String, URL> = {
    
        let PICSURLStrings = [
        
            "White": "https://static.pexels.com/photos/2255/black-and-white-city-houses-skyline.jpg",
            "Blue": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Starry_Night_Over_the_Rhone.jpg/290px-Starry_Night_Over_the_Rhone.jpg",
            "Green": "https://static.wixstatic.com/media/98499d_20d0eaa6adef4e228d2c656760e632cf.jpg"
            
        ]
        
        var urls = Dictionary<String, URL>()
        
        for(key, value) in PICSURLStrings{
            
            urls[key] = URL(string: value)
        
        }
        
        return urls
        
    }()







}
