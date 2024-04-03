//
//  GridCollectionView.swift
//  InstaClone
//
//  Created by 김지훈 on 4/3/24.
//

import UIKit

class GridCollectionView: UICollectionView {
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        super.init(frame: .zero, collectionViewLayout: layout)
        self.register(GridCollectionViewCell.self, forCellWithReuseIdentifier: GridCollectionViewCell.identifier)
//        self.backgroundColor = .coustomBackgroundColor
        self.backgroundColor = .yellow
        self.showsHorizontalScrollIndicator = false
        self.allowsMultipleSelection = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
