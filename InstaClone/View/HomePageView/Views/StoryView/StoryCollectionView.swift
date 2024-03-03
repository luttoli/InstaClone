//
//  StoryCollectionView.swift
//  InstaClone
//
//  Created by 김지훈 on 3/2/24.
//

import UIKit

class StoryCollectionView: UICollectionView {
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        self.register(StoryCollectionViewCell.self, forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
        self.backgroundColor = .coustomBackgroundColor
        self.showsHorizontalScrollIndicator = false
        self.allowsMultipleSelection = true
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
