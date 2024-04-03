//
//  CommentTableViewCell.swift
//  InstaClone
//
//  Created by 김지훈 on 3/20/24.
//

import UIKit
import SnapKit

class CommentTableViewCell: UITableViewCell {
    //전체 스택뷰?
    lazy var allStackView: UIStackView = {
        let allStackView = UIStackView(arrangedSubviews: [profileImage, commentStackView, likeStackView])
        allStackView.customStackView(axis: .horizontal, spacing: 0, alignment: .leading)
//        allStackView.distribution = .equalSpacing
        return allStackView
    }()
    
    //이미지
    lazy var profileImage: UIButton = {
        let profileImage = UIButton()
        return profileImage
    }()
    
    //댓글 스택뷰
    lazy var commentStackView: UIStackView = {
        let commentStackView = UIStackView(arrangedSubviews: [profileNickNameButton, comment, replyButton])
        commentStackView.customStackView(axis: .vertical, spacing: 0, alignment: .leading)
        return commentStackView
    }()
    
    //닉네임
    lazy var profileNickNameButton: UIButton = {
        let profileNickNameButton = UIButton()
        profileNickNameButton.customTextButton(text: "", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize10, weight: .medium), titleColor: .black, backgroundColor: .clear)
        return profileNickNameButton
    }()
    
    //댓글
    lazy var comment: UILabel = {
        let comment = UILabel()
        comment.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .regular), textColor: .black, alignment: .left)
        return comment
    }()
    
    //답글 달기 버튼
    lazy var replyButton: UIButton = {
        let replyButton = UIButton()
        replyButton.customTextButton(text: "답글 달기", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize10, weight: .regular), titleColor: .black, backgroundColor: .clear)
        return replyButton
    }()
    
    //댓글 좋아요 스택뷰
    lazy var likeStackView: UIStackView = {
        let likeStackView = UIStackView(arrangedSubviews: [heartButton, likeCount])
        likeStackView.customStackView(axis: .vertical, spacing: 0, alignment: .fill)
        return likeStackView
    }()
    
    //하트 버튼
    lazy var heartButton: UIButton = {
        let heartButton = UIButton()
        return heartButton
    }()
    
    //숫자
    lazy var likeCount: UILabel = {
        let likeCount = UILabel()
        likeCount.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize10, weight: .medium), textColor: .black, alignment: .center)
        return likeCount
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
        contentView.addSubview(allStackView)

        allStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
