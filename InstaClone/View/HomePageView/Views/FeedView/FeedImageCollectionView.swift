//
//  FeedImageCollectionView.swift
//  InstaClone
//
//  Created by 김지훈 on 3/3/24.
//

import UIKit

class FeedImageCollectionView: UICollectionView {
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        self.register(FeedImageCollectionViewCell.self, forCellWithReuseIdentifier: FeedImageCollectionViewCell.identifier)
//        self.backgroundColor = .coustomBackgroundColor
        self.backgroundColor = .orange
        self.showsHorizontalScrollIndicator = false
        self.allowsMultipleSelection = true
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
