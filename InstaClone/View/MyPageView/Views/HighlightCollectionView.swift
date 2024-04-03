//
//  HighlightCollectionView.swift
//  InstaClone
//
//  Created by 김지훈 on 3/31/24.
//

import UIKit

class HighlightCollectionView: UICollectionView {
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        self.register(HighlightCollectionViewCell.self, forCellWithReuseIdentifier: HighlightCollectionViewCell.identifier)
        self.backgroundColor = .coustomBackgroundColor
        self.showsHorizontalScrollIndicator = false
        self.allowsMultipleSelection = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
