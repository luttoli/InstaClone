//
//  SettingFeedCollectionViewCell.swift
//  InstaClone
//
//  Created by 김지훈 on 3/19/24.
//

import UIKit

class SettingFeedCollectionViewCell: UICollectionViewCell {
    //피드세팅 메뉴 타이틀
    lazy var settingFeedMenuTitle: UILabel = {
        let settingFeedMenuTitle = UILabel()
        settingFeedMenuTitle.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize14, weight: .bold), textColor: .white, alignment: .center)
        settingFeedMenuTitle.numberOfLines = 0
        return settingFeedMenuTitle
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
        contentView.addSubview(settingFeedMenuTitle)
        
        settingFeedMenuTitle.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
