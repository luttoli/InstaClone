//
//  SettingFeedTableViewCell.swift
//  InstaClone
//
//  Created by 김지훈 on 3/18/24.
//

import UIKit
import SnapKit

class SettingFeedTableViewCell: UITableViewCell {
    //피드세팅 메뉴 타이틀
    lazy var settingFeedMenuTitle: UILabel = {
        let settingFeedMenuTitle = UILabel()
        settingFeedMenuTitle.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize14, weight: .bold), textColor: .white, alignment: .left)
        return settingFeedMenuTitle
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
        contentView.addSubview(settingFeedMenuTitle)
        
        settingFeedMenuTitle.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leading).offset(20)
            make.centerY.equalTo(contentView)
            
        }
    }
    

}
