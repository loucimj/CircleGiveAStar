//
//  StarryView.swift
//  SpriteKitSwiftParticleTutorial
//
//  Created by Javi on 30/8/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//


import UIKit
import SpriteKit

extension UIView {
    func addAnimationLayer (){
        let emitter:CAEmitterLayer = CAEmitterLayer()
        emitter.bounds = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
        emitter.frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
        emitter.emitterPosition = CGPoint(x:  self.bounds.width/2, y: self.bounds.height/2)
        
        print("position \(emitter.emitterPosition.x) - \(emitter.emitterPosition.y)")
        emitter.emitterSize = self.frame.size
        
        print ("origin \(emitter.frame.origin.x) - \(emitter.frame.origin.y)")
        print ("bounds \(emitter.bounds.width) - \(emitter.bounds.height)")
        emitter.emitterShape = kCAEmitterLayerRectangle
        //        emitter.zPosition = 10
        
        
        let cell:CAEmitterCell = CAEmitterCell()
        
        cell.scale = 0.05
        cell.scaleRange = 0.25
        cell.scaleSpeed = 0.002
        cell.alphaSpeed = 0.9
        
        cell.birthRate = 15.280
        cell.lifetime = 2.12
        cell.lifetimeRange = 0.954
        
        cell.yAcceleration = 0.01
        cell.xAcceleration = 0.01
        cell.velocity = 0.004
        cell.velocityRange = 30
        
        cell.emissionLatitude = 1170.6
        cell.emissionLongitude = 5400.5
        cell.emissionRange = 10
        
        cell.contents = UIImage(named: "spark")?.cgImage
        
        emitter.emitterCells = [cell]
        
        self.layer.insertSublayer(emitter, at: 0)
    }
    
}

class StarryView: UIView {
    override init (frame : CGRect) {
        super.init(frame : frame)
        addAnimationLayer()
    }
    
    convenience init () {
        self.init(frame:CGRect.zero)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        addAnimationLayer()
    }
    
}
class StarryUIImageView: UIImageView {
    override init (frame : CGRect) {
        super.init(frame : frame)
        addAnimationLayer()
    }
    
    convenience init () {
        self.init(frame:CGRect.zero)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        addAnimationLayer()
    }
    
    
}
