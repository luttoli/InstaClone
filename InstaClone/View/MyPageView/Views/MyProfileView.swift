//
//  MyProfileView.swift
//  InstaClone
//
//  Created by 김지훈 on 3/31/24.
//

import UIKit
import SnapKit

class MyProfileView: UIView {
    //전체
    lazy var profileTopStackView: UIStackView = {
        let profileTopStackView = UIStackView(arrangedSubviews: [profileImageButton, numberStackView])
        profileTopStackView.customStackView(axis: .horizontal, spacing: 50, alignment: .fill)
        return profileTopStackView
    }()
    
    //이미지
    lazy var profileImageButton: UIButton = {
        let profileImageButton = UIButton()
        profileImageButton.setImage(UIImage(named: "Photo"), for: .normal)
        return profileImageButton
    }()
    
    //숫자
    lazy var numberStackView: UIStackView = {
        let numberStackView = UIStackView(arrangedSubviews: [postStackView, followersStackView, followingStackView])
        numberStackView.customStackView(axis: .horizontal, spacing: 15, alignment: .center)
        numberStackView.distribution = .equalSpacing
        return numberStackView
    }()
    
    //게시물
    lazy var postStackView: UIStackView = {
        let postStackView = UIStackView(arrangedSubviews: [postNumber, postLabel])
        postStackView.customStackView(axis: .vertical, spacing: 0, alignment: .center)
        return postStackView
    }()
    
    lazy var postNumber: UILabel = {
        let postNumber = UILabel()
        postNumber.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize16, weight: .bold), textColor: .black, alignment: .center)
        postNumber.text = "10"
        return postNumber
    }()
    
    lazy var postLabel: UILabel = {
        let postLabel = UILabel()
        postLabel.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .medium), textColor: .black, alignment: .center)
        postLabel.text = "게시물"
        return postLabel
    }()
    
    //팔로워
    lazy var followersStackView: UIStackView = {
        let followersStackView = UIStackView(arrangedSubviews: [followersNumber, followersLabel])
        followersStackView.customStackView(axis: .vertical, spacing: 0, alignment: .center)
        return followersStackView
    }()
    
    lazy var followersNumber: UILabel = {
        let followersNumber = UILabel()
        followersNumber.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize16, weight: .bold), textColor: .black, alignment: .center)
        followersNumber.text = "789"
        return followersNumber
    }()
    
    lazy var followersLabel: UILabel = {
        let followersLabel = UILabel()
        followersLabel.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .medium), textColor: .black, alignment: .center)
        followersLabel.text = "팔로워"
        return followersLabel
    }()
    
    //팔로잉
    lazy var followingStackView: UIStackView = {
        let followingStackView = UIStackView(arrangedSubviews: [followingNumber, followingLabel])
        followingStackView.customStackView(axis: .vertical, spacing: 0, alignment: .center)
        return followingStackView
    }()
    
    lazy var followingNumber: UILabel = {
        let followerNumber = UILabel()
        followerNumber.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize16, weight: .bold), textColor: .black, alignment: .center)
        followerNumber.text = "123"
        return followerNumber
    }()
    
    lazy var followingLabel: UILabel = {
        let followingLabel = UILabel()
        followingLabel.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .medium), textColor: .black, alignment: .center)
        followingLabel.text = "팔로잉"
        return followingLabel
    }()
    
    //
    lazy var profileBottomStackView: UIStackView = {
        let profileBottomStackView = UIStackView(arrangedSubviews: [nickName, introLabel])
        profileBottomStackView.customStackView(axis: .vertical, spacing: 0, alignment: .fill)
        return profileBottomStackView
    }()
    
    //닉네임
    lazy var nickName: UILabel = {
        let nickName = UILabel()
        nickName.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize14, weight: .bold), textColor: .black, alignment: .left)
        nickName.text = "Jacob West"
        return nickName
    }()
    
    //소개글
    lazy var introLabel: UILabel = {
        let introLabel = UILabel()
        introLabel.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .regular), textColor: .black, alignment: .left)
        introLabel.numberOfLines = 2
        introLabel.text = "Digital goodies designer @pixsellz\nEverything is designed."
        return introLabel
    }()
    
    //수정하기 버튼
    lazy var editProfileButton: UIButton = {
        let editProfileButton = UIButton()
        editProfileButton.setImage(UIImage(named: "EditProfileButton"), for: .normal)
        return editProfileButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    private func setupUI() {
        addSubview(profileTopStackView)
        addSubview(profileBottomStackView)
        addSubview(editProfileButton)
        
        profileTopStackView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leading.equalTo(self.safeAreaLayoutGuide)
            make.trailing.equalTo(self.safeAreaLayoutGuide)
        }
        
        profileImageButton.snp.makeConstraints { make in
            make.width.height.equalTo(100)
        }
        
        numberStackView.snp.makeConstraints { make in
            make.trailing.equalTo(self.safeAreaLayoutGuide).offset(-30)
        }
        
        profileBottomStackView.snp.makeConstraints { make in
            make.top.equalTo(profileTopStackView.snp.bottom).offset(20)
            make.leading.equalTo(self.safeAreaLayoutGuide)
            make.trailing.equalTo(self.safeAreaLayoutGuide)
        }
        
        editProfileButton.snp.makeConstraints { make in
            make.top.equalTo(profileBottomStackView.snp.bottom).offset(20)
            make.leading.equalTo(self.safeAreaLayoutGuide)
            make.trailing.equalTo(self.safeAreaLayoutGuide)
        }
        
        
    }
}
