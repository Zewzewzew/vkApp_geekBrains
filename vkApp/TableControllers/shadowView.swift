//
//  shadowView.swift
//  vkApp
//
//  Created by Никита Ананьев on 06.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit
class ShadowView: UIView {
    §
    override class var layerClass: AnyClass {
        return CAShapeLayer.self
    }

    @IBInspectable var shadow: CGFloat = 10 {
           didSet {
               setNeedsDisplay()
           }
       }
       



}
