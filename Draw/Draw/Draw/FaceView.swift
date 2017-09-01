//
//  FaceView.swift
//  Draw
//
//  Created by Vencislav Petkov on 9/1/17.
//  Copyright © 2017 Vencislav Petkov. All rights reserved.
//

import UIKit

class FaceView: UIView {

    
    override func draw(_ rect: CGRect) {
        
        let skullRadius = min(bounds.size.width,bounds.size.height) / 2
        
        let skullCenter = CGPoint(x: bounds.midX, y: bounds.midY)
        
        
        let path = UIBezierPath(arcCenter: skullCenter, radius: skullRadius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: false)
        
        path.lineWidth = 5.0
        
        UIColor.blue.set()
        
        path.stroke()
        
        
        
        
    }
    

}
