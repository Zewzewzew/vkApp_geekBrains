//
//  LikeButton.swift
//  vkApp
//
//  Created by Никита Ананьев on 09.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit
class LikeButton: UIButton {
    var status = false
    var likeCounter = 0
    
    @objc func like() {
        status.toggle()
        if status {
            likeIt()
        } else {
            dislikeIt()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        withoutLike()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    private func withoutLike() {
        setImage(UIImage(systemName: "heart"), for: .normal)
        tintColor = .blue
        addTarget(self, action: #selector(like), for: .touchUpInside)
    }
    func likeIt() {
        setImage(UIImage(systemName: "heart.fill"), for: .normal)
        tintColor = .red
    }
    func dislikeIt() {
        setImage(UIImage(systemName: "heart"), for: .normal)
        tintColor = .blue
    }
    
    
}
