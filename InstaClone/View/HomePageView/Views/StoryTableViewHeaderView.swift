//
//  StoryTableViewHeaderView.swift
//  InstaClone
//
//  Created by 김지훈 on 3/3/24.
//

import UIKit
import SnapKit

class StoryTableViewHeaderView: UITableViewHeaderFooterView {
    
    
    
    //스토리셀 전체 스택뷰
    lazy var storyStackView: UIStackView = {
        let storyStackView = UIStackView(arrangedSubviews: [storyLiveImageStackView, storyNickName])
        storyStackView.customStackView(axis: .vertical, spacing: 0, alignment: .center)
        return storyStackView
    }()
    
    lazy var storyLiveImageStackView: UIStackView = {
        let storyLiveImageStackView = UIStackView(arrangedSubviews: [storyImage, storyStatusImage])
        storyLiveImageStackView.customStackView(axis: .vertical, spacing: -10, alignment: .center)
        return storyLiveImageStackView
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

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupUI() {
        contentView.addSubview(storyStackView)
        
        storyStackView.snp.makeConstraints { make in
//            make.centerX.centerY.equalToSuperview()
            make.top.equalToSuperview().offset(8) // 상단 여백 추가
            make.leading.trailing.equalToSuperview() // 좌우 여백 추가
            make.bottom.equalToSuperview().offset(-8) // 하단 여백 추가
        }
        
        storyImage.snp.makeConstraints { make in
            make.width.height.equalTo(62)
        }
        
        storyStatusImage.snp.makeConstraints { make in
            make.width.equalTo(26)
            make.height.equalTo(16)
        }
        
        storyNickName.snp.makeConstraints { make in
            make.top.equalTo(storyImage.snp.bottom).offset(4) // storyImage 아래에 추가
        }
    }
}
