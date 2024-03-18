//
//  SettingFeedTableView.swift
//  InstaClone
//
//  Created by 김지훈 on 3/18/24.
//

import UIKit

class SettingFeedTableView: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .insetGrouped)
        setupTableView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupTableView()
    }
    
    private func setupTableView() {
        self.register(SettingFeedTableViewCell.self, forCellReuseIdentifier: "SettingFeedTableViewCell")
        self.backgroundColor = .coustomBackgroundColor
        self.isScrollEnabled = false
        self.separatorStyle = .singleLine //라인 설정
        self.separatorColor = .white //라인색
        self.separatorInsetReference = .fromAutomaticInsets //라인 여백 - 사용 환경에 따라 알아서 설정?
        
    }

}
