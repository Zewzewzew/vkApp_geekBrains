//
//  NewsCollectionViewLayout.swift
//  vkApp
//
//  Created by Никита Ананьев on 21.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit


class CollectionViewLayout: UICollectionViewLayout {
    var cacheAttributes = [IndexPath: UICollectionViewLayoutAttributes]()
    var columnsCount = 2
    var cellHeight: CGFloat = 128
    private var totalCellsHeight: CGFloat = 0
    
    
    
}
