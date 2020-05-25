//
//  ShadowView.swift
//  vkApp
//
//  Created by Никита Ананьев on 08.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

@IBDesignable class ShadowView: UIView {
    
    @IBInspectable var color: UIColor = .black {
        didSet {
            updateColors()
        }
    }
    @IBInspectable var opacity: CGFloat = 1  {
        didSet {
            updateOpacity()
        }
    }
    @IBInspectable var radius: CGFloat = 7 {
        didSet {
            updateRadius()
        }
    }
    @IBInspectable var offset: CGSize = .zero {
        didSet {
            updateOffset()
        }
    }
    
    override class var layerClass: AnyClass {
        return CAShapeLayer.self
    }
    var shadowLayer: CAShapeLayer {
        return self.layer as! CAShapeLayer
    }
    func updateColors() {
        self.shadowLayer.shadowColor = self.color.cgColor
    }
    func updateOpacity() {
        self.shadowLayer.shadowOpacity = Float(self.opacity)
    }
    func updateRadius() {
        self.shadowLayer.shadowRadius = self.radius
    }
    func updateOffset() {
        self.shadowLayer.shadowOffset = self.offset
    }
    
}


