//
//  FeedTableViewCell.swift
//  InstaClone
//
//  Created by 김지훈 on 3/3/24.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    lazy var profileStackView: UIStackView = {
        let profileStackView = UIStackView(arrangedSubviews: [profileImage, profileTextStackView])
        profileStackView.customStackView(axis: .horizontal, spacing: 10, alignment: .fill)
        return profileStackView
    }()
    
    lazy var profileImage: UIImageView = {
        let profileImage = UIImageView()
        return profileImage
    }()
    
    lazy var profileTextStackView: UIStackView = {
        let profileTextStackView = UIStackView(arrangedSubviews: [profileNickNameLabel, profileLocationLabel])
        profileTextStackView.customStackView(axis: .vertical, spacing: 1, alignment: .center)
        return profileTextStackView
    }()
    
    lazy var profileNickNameLabel: UILabel = {
        let profileNickNameLabel = UILabel()
        profileNickNameLabel.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .medium), textColor: .black, alignment: .left)
        return profileNickNameLabel
    }()
    
    lazy var profileLocationLabel: UILabel = {
        let profileLocationLabel = UILabel()
        profileLocationLabel.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize10, weight: .regular), textColor: .black, alignment: .left)
        return profileLocationLabel
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
