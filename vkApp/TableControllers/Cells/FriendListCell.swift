//
//  FriendListCell.swift
//  vkApp
//
//  Created by Никита Ананьев on 03.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class FriendListCell: UITableViewCell {
    
    @IBOutlet weak var FriendNameLabel: UILabel!
    @IBOutlet weak var FriendImage: UIImageView!
    @IBOutlet weak var FriendImageView: UIView!

    @IBDesignable class TestView: UIView {
        
        @IBInspectable var radius: CGFloat = 10 {
            didSet {
                setNeedsDisplay()
            }
        }
        
        override func draw(_ rect: CGRect) {
            super.draw(rect)
            guard let context = UIGraphicsGetCurrentContext() else { return }
            context.setFillColor(UIColor.red.cgColor)
            context.fillEllipse(in: CGRect(x: rect.midX - radius,
                                           y: rect.midY - radius,
                                           width: radius * 2,
                                           height: radius * 2))
            
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension UIView {
    func dropShadow(scale: Bool = true) {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = .zero
        layer.shadowRadius = 2
        layer.cornerRadius = layer.frame.height / 2
        
    }
}

