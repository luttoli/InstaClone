//
//  StroyCollectionViewCell.swift
//  InstaClone
//
//  Created by 김지훈 on 3/2/24.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    //스토리셀 전체 스택뷰 (라이브상태 제외)
    lazy var storyStackView: UIStackView = {
        let storyStackView = UIStackView(arrangedSubviews: [storyImage, storyNickName])
        storyStackView.customStackView(axis: .vertical, spacing: 5, alignment: .center)
        return storyStackView
    }()
    
    //스토리 이미지
    lazy var storyImage: UIImageView = {
        let storyImage = UIImageView()
        storyImage.image = UIImage(named: "Oval.png")
        return storyImage
    }()
    
    //라이브 상태 이미지
    lazy var storyStatusImage: UIImageView = {
        let storyStatusImage = UIImageView()
        storyStatusImage.image = UIImage(named: "Live.png")
        return storyStatusImage
    }()
    
    //닉네임
    lazy var storyNickName: UILabel = {
        let storyNickName = UILabel()
        storyNickName.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .regular), textColor: .black, alignment: .center)
        return storyNickName
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
        contentView.addSubview(storyStackView)
        contentView.addSubview(storyStatusImage)
        
        storyStackView.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
        
        storyImage.snp.makeConstraints { make in
            make.width.height.equalTo(62)
        }
        
        storyStatusImage.snp.makeConstraints { make in
            make.top.equalTo(storyImage.snp.bottom).offset(-10)
            make.centerX.equalToSuperview()
            make.width.equalTo(26)
            make.height.equalTo(16)
        }
        
    }
}
