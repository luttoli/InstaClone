//
//  HomeTableViewCell.swift
//  InstaClone
//
//  Created by 김지훈 on 3/3/24.
//

import UIKit
import SnapKit

class HomeTableViewCell: UITableViewCell {
    //전체 스택뷰
    lazy var fullStackView: UIStackView = {
        let fullStackView = UIStackView(arrangedSubviews: [profileStackView, feedImageCollectionView, buttonStackView, feedTextStackView])
        fullStackView.customStackView(axis: .vertical, spacing: 10, alignment: .fill)
        return fullStackView
    }()
    
    //프로필 이미지 + 텍스트 스택뷰
    lazy var profileStackView: UIStackView = {
        let profileStackView = UIStackView(arrangedSubviews: [profileImageButton, profileTextStackView, settingButton])
        profileStackView.customStackView(axis: .horizontal, spacing: 10, alignment: .fill)
        return profileStackView
    }()
    
    //프로필 이미지
    lazy var profileImageButton: UIButton = {
        let profileImageButton = UIButton()
        return profileImageButton
    }()
    
    //프로필 텍스트 스택뷰
    lazy var profileTextStackView: UIStackView = {
        let profileTextStackView = UIStackView(arrangedSubviews: [profileNickNameButton, profileLocationButton])
        profileTextStackView.customStackView(axis: .vertical, spacing: 0, alignment: .leading)
        profileTextStackView.distribution = .fill
        return profileTextStackView
    }()
    
    //닉네임
    lazy var profileNickNameButton: UIButton = {
        let profileNickNameButton = UIButton()
        profileNickNameButton.customTextButton(text: "", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .bold), titleColor: .black, backgroundColor: .clear)
        return profileNickNameButton
    }()
    
    //위치
    lazy var profileLocationButton: UIButton = {
        let profileLocationButton = UIButton()
        profileLocationButton.customTextButton(text: "", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize10, weight: .regular), titleColor: .black, backgroundColor: .clear)
        return profileLocationButton
    }()
    
    //설정 버튼
    lazy var settingButton: UIButton = {
        let settingButton = UIButton()
        settingButton.setImage(UIImage(named: "More.png"), for: .normal)
        return settingButton
    }()
    
    //피드 이미지 콜랙션뷰
    lazy var feedImageCollectionView = FeedImageCollectionView()
    
    //버튼 총 스택뷰
    lazy var buttonStackView: UIStackView = {
        let buttonStackView = UIStackView(arrangedSubviews: [leftButtonStackView, saveButton])
        buttonStackView.customStackView(axis: .horizontal, spacing: 10, alignment: .fill)
        buttonStackView.distribution = .equalCentering
        return buttonStackView
    }()
    
    //왼쪽에 버튼 세개만 들어있는 스택뷰
    lazy var leftButtonStackView: UIStackView = {
        let leftButtonStackView = UIStackView(arrangedSubviews: [likeButton, commentButton, shareButton])
        leftButtonStackView.customStackView(axis: .horizontal, spacing: 20, alignment: .fill)
        return leftButtonStackView
    }()
    
    //좋아요 버튼
    lazy var likeButton: UIButton = {
        let likeButton = UIButton()
        likeButton.setImage(UIImage(named: "Heart.png"), for: .normal)
        return likeButton
    }()
    
    //댓글 버튼
    lazy var commentButton: UIButton = {
        let commentButton = UIButton()
        commentButton.setImage(UIImage(named: "Comment.png"), for: .normal)
        return commentButton
    }()
    
    //공유 버튼
    lazy var shareButton: UIButton = {
        let shareButton = UIButton()
        shareButton.setImage(UIImage(named: "Messanger.png"), for: .normal)
        return shareButton
    }()
    
    //인디케이터???
    
    
    //저장버튼
    lazy var saveButton: UIButton = {
        let saveButton = UIButton()
        saveButton.setImage(UIImage(named: "Save.png"), for: .normal)
        return saveButton
    }()
    
    //피드 텍스트 스택뷰
    lazy var feedTextStackView: UIStackView = {
        let feedTextStackView = UIStackView(arrangedSubviews: [feedLikebyStackView, feedInfoLabel])
        feedTextStackView.customStackView(axis: .vertical, spacing: 5, alignment: .fill)
        return feedTextStackView
    }()
    
    //좋아요 누른 사람 이미지랑 텍스트
    lazy var feedLikebyStackView: UIStackView = {
        let feedLikebyStackView = UIStackView(arrangedSubviews: [likebyImage, likedbyFullText])
        feedLikebyStackView.customStackView(axis: .horizontal, spacing: 10, alignment: .fill)
        return feedLikebyStackView
    }()
    
    //이미지
    lazy var likebyImage: UIImageView = {
        let likebyImage = UIImageView()
        return likebyImage
    }()
    
    //좋아요한 사람 숫자
    lazy var likedbyFullText: UILabel = {
        let likedbyFullText = UILabel()
        likedbyFullText.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .regular), textColor: .black, alignment: .left)
        return likedbyFullText
    }()
    
    //좋아요한사람
    lazy var likedbyName: UILabel = {
        let likedbyName = UILabel()
        likedbyName.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .bold), textColor: .black, alignment: .left)
        return likedbyName
    }()
    
    //좋아요개수
    lazy var likedbyCount: UILabel = {
        let likedbyCount = UILabel()
        likedbyCount.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .bold), textColor: .black, alignment: .left)
        return likedbyCount
    }()
    
    //피드 설명
    lazy var feedInfoLabel: UILabel = {
        let feedInfoLabel = UILabel()
        feedInfoLabel.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .regular), textColor: .black, alignment: .left)
        feedInfoLabel.numberOfLines = 0
        return feedInfoLabel
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupUI()
    }
    
    func setupUI() {
        contentView.addSubview(fullStackView)
        
        fullStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        profileStackView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(10)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(Constants.coustomHorizontalMargin)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).offset(-Constants.coustomHorizontalMargin)
        }
        
        profileImageButton.snp.makeConstraints { make in
            make.width.height.equalTo(32)
        }
        
        profileNickNameButton.snp.makeConstraints { make in
            make.height.equalTo(16)
        }
        
        profileLocationButton.snp.makeConstraints { make in
            make.height.equalTo(13)
        }
        
        settingButton.snp.makeConstraints { make in
            make.width.equalTo(14)
        }
        
        feedImageCollectionView.snp.makeConstraints { make in
            make.leading.equalTo(safeAreaLayoutGuide)
            make.trailing.equalTo(safeAreaLayoutGuide)
            make.height.equalTo(feedImageCollectionView.snp.width) //가로세로 길이 맞추기
        }
        
        buttonStackView.snp.makeConstraints { make in
            make.height.equalTo(20)
        }
        
        likebyImage.snp.makeConstraints { make in
            make.width.height.equalTo(17)
        }
        
        feedInfoLabel.snp.makeConstraints { make in
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-10)
        }
    }
    
}
