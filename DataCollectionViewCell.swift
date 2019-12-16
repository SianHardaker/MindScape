//
//  CollectionViewCell.swift
//  MindScape
//
//  Created by Sian Hardaker on 08/08/2019.
//  Copyright © 2019 Sian Hardaker. All rights reserved.
//

import UIKit

class DataCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var DateLabel: UILabel!
    
    @IBOutlet weak var Circle: UIView!
    
    func DrawCircle() {
        
        let center = Circle.center
        
        let circlePath = UIBezierPath(arcCenter: center, radius: (Circle.bounds.width/2 - 5), startAngle: -CGFloat.pi/2, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        let circleLayer = CAShapeLayer()
        circleLayer.path = circlePath.cgPath
        circleLayer.strokeColor = UIColor.red.cgColor
        circleLayer.lineWidth = 2
        circleLayer.strokeEnd = 0
        circleLayer.fillColor = UIColor.clear.cgColor
        circleLayer.lineCap = CAShapeLayerLineCap.round
        
        let Animation = CABasicAnimation(keyPath: "strokeEnd")
        Animation.duration = 1.5
        Animation.toValue = 1
        Animation.fillMode = CAMediaTimingFillMode.forwards
        Animation.isRemovedOnCompletion = false
        
        circleLayer.add(Animation, forKey: nil)
        Circle.layer.addSublayer(circleLayer)
        Circle.layer.backgroundColor = UIColor.clear.cgColor

    }
    
}
