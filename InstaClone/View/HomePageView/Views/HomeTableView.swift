//
//  HomeTableView.swift
//  InstaClone
//
//  Created by 김지훈 on 3/3/24.
//

import UIKit

class HomeTableView: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .grouped)
        setupTableView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupTableView()
    }
    
    private func setupTableView() {
        self.register(StoryHeaderView.self, forHeaderFooterViewReuseIdentifier: "StoryHeaderView")
        self.register(HomeTableViewCell.self, forCellReuseIdentifier: "HomeTableViewCell")
        self.separatorStyle = .singleLine
        self.backgroundColor = .clear
        self.sectionFooterHeight = 0 //푸터뷰 높이 0으로 안쓰겠다는 설정
        self.showsVerticalScrollIndicator = false
    }
}
