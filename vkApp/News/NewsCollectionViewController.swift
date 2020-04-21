//
//  NewsCollectionViewController.swift
//  vkApp
//
//  Created by Никита Ананьев on 21.04.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewLayout: UICollectionViewLayout {
    var cacheAttributes = [IndexPath: UICollectionViewLayoutAttributes]()
    var columnsCount = 2
    var cellHeight: CGFloat = 128
    private var totalCellsHeight: CGFloat = 0
    
    
    
}
class NewsCollectionViewController: UICollectionViewController {
    
    override func prepare() {
        self.cacheAttributes = [:] // Инициализируем атрибуты
     
        // Проверяем наличие collectionView
        guard let collectionView = self.collectionView else { return }
        
        let itemsCount = collectionView.numberOfItems(inSection: 0)
        // Проверяем, что в секции есть хотя бы одна ячейка
        guard itemsCount > 0 else { return }

    }
    
    let bigCellWidth = collectionView.frame.width
    let smallCellWidth = collectionView.frame.width / CGFloat(self.columnsCount)
    
    var lastY: CGFloat = 0
    var lastX: CGFloat = 0
        
    for index in 0..<itemsCount {
        let indexPath = IndexPath(item: index, section: 0)
        let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
        
    }
    
    if isBigCell {
        attributes.frame = CGRect(x: 0, y: lastY,
                                  width: bigCellWidth, height: self.cellHeight)
        
        lastY += self.cellHeight
    } else {
        attributes.frame = CGRect(x: lastX, y: lastY,
                                  width: smallCellWidth, height: self.cellHeight)
        
        let isLastColumn = (index + 2) % (self.columnsCount + 1) == 0 || index == itemsCount - 1
        if isLastColumn {
            lastX = 0
            lastY += self.cellHeight
        } else {
            lastX += smallCellWidth
        }
    }

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        return cell
        
    }
    

}

