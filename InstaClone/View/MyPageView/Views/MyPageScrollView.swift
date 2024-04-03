//
//  MyPageScrollView.swift
//  InstaClone
//
//  Created by 김지훈 on 3/30/24.
//

import UIKit
import SnapKit

class MyPageScrollView: UIView {
    //스크롤뷰
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    let contentView: UIView = {
        let contentView = UIView()
        return contentView
    }()
    
    lazy var myProfileView = MyProfileView()
    lazy var highlightCollectionView = HighlightCollectionView()
    lazy var segmentView = SegmentView()
    lazy var gridCollectionView = GridCollectionView()
    lazy var reelsCollectionView = ReelsCollectionView()
    lazy var tagsCollectionView = TagsCollectionView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    private func setupUI() {
        addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(myProfileView)
        contentView.addSubview(highlightCollectionView)
        contentView.addSubview(segmentView)
        contentView.addSubview(gridCollectionView)
        contentView.addSubview(reelsCollectionView)
        contentView.addSubview(tagsCollectionView)
        
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints { make in
            make.edges.equalTo(scrollView)
            make.width.equalTo(scrollView)
            make.height.equalTo(2000)
        }

        myProfileView.snp.makeConstraints { make in
            make.top.equalTo(contentView)
            make.leading.equalTo(contentView).offset(20)
            make.trailing.equalTo(contentView).offset(-20)
            make.height.equalTo(230)
        }
        
        highlightCollectionView.snp.makeConstraints { make in
            make.top.equalTo(myProfileView.snp.bottom)
            make.leading.equalTo(contentView).offset(20)
            make.trailing.equalTo(contentView).offset(-20)
            make.height.equalTo(100)
        }
        
        segmentView.snp.makeConstraints { make in
            make.top.equalTo(highlightCollectionView.snp.bottom)
            make.leading.equalTo(contentView)
            make.trailing.equalTo(contentView)
            make.height.equalTo(44)
        }
        
        gridCollectionView.snp.makeConstraints { make in
            make.top.equalTo(segmentView.snp.bottom)
            make.leading.equalTo(contentView)
            make.trailing.equalTo(contentView)
            make.bottom.equalTo(contentView)
        }
        
        reelsCollectionView.snp.makeConstraints { make in
            make.top.equalTo(segmentView.snp.bottom)
            make.leading.equalTo(contentView)
            make.trailing.equalTo(contentView)
            make.bottom.equalTo(contentView)
        }
        
        tagsCollectionView.snp.makeConstraints { make in
            make.top.equalTo(segmentView.snp.bottom)
            make.leading.equalTo(contentView)
            make.trailing.equalTo(contentView)
            make.bottom.equalTo(contentView)
        }
        
    }
}
