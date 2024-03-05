//
//  StoryHeaderView.swift
//  InstaClone
//
//  Created by 김지훈 on 3/3/24.
//

import UIKit
import SnapKit

class StoryHeaderView: UITableViewHeaderFooterView {
    var storyCollectionView = StoryCollectionView()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupUI() {
        contentView.addSubview(storyCollectionView)
        
        storyCollectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(Constants.coustomHorizontalMargin)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).offset(-Constants.coustomHorizontalMargin)
            make.height.equalTo(100)
        }
    }
    
}
