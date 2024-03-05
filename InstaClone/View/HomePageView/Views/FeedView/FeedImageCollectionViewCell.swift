//
//  FeedImageCollectionViewCell.swift
//  InstaClone
//
//  Created by 김지훈 on 3/3/24.
//

import UIKit

class FeedImageCollectionViewCell: UICollectionViewCell {
    lazy var feedImage: UIImageView = {
        let feedImage = UIImageView()
//        feedImage.contentMode = .scaleAspectFill
//        feedImage.clipsToBounds = true
        return feedImage
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("Not implemented required init?(coder: NSCoder)")
    }
    
    func setupUI() {
        contentView.addSubview(feedImage)
        
        feedImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
                
    }
}
