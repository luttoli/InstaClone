//
//  SearchBar.swift
//  InstaClone
//
//  Created by 김지훈 on 3/20/24.
//

import UIKit
import SnapKit

class SearchBar: UISearchBar {
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "검색"
        searchBar.showsCancelButton = false
        return searchBar
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
        addSubview(searchBar)
        
        searchBar.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
