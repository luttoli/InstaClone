//
//  SettingFeedCollectionView.swift
//  InstaClone
//
//  Created by 김지훈 on 3/19/24.
//

import UIKit

class SettingFeedCollectionView: UICollectionView {
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        self.register(SettingFeedCollectionViewCell.self, forCellWithReuseIdentifier: SettingFeedCollectionViewCell.identifier)
        self.backgroundColor = .coustomBackgroundColor
        self.showsHorizontalScrollIndicator = false
        self.allowsMultipleSelection = true
        self.isPagingEnabled = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
