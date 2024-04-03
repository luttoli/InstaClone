//
//  CommentTableView.swift
//  InstaClone
//
//  Created by 김지훈 on 3/20/24.
//

import UIKit
import SnapKit

class CommentTableView: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .grouped)
        setupTableView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupTableView()
    }
    
    private func setupTableView() {
        self.register(CommentTableViewCell.self, forCellReuseIdentifier: "CommentTableViewCell")
        self.backgroundColor = .coustomBackgroundColor
        self.showsVerticalScrollIndicator = false
        self.separatorStyle = .none //구분선 없애기
    }
}
