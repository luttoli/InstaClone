//
//  ShareViewController.swift
//  InstaClone
//
//  Created by 김지훈 on 3/20/24.
//

import UIKit
import SnapKit

class ShareViewController: UIViewController {
    //
    lazy var searchBar = SearchBar()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .coustomBackgroundColor
        navigationUI()
        setupUI()
    }
    
    func navigationUI() {
        navigationController?.setNavigationBarHidden(true, animated: false) //네비게이션 숨긴 상태로 다른 뷰 넘어왔을떄 보여주기
        navigationController?.navigationBar.backgroundColor = .coustomBackgroundColor
        navigationItem.title = "회원님이 공유하는 링크는 고유한 링크이며 표시되는 광고나 추천을 개선하는 데 사용될 수 있습니다. 더 알아보기"
        
    }
    
    func setupUI() {
        view.addSubview(searchBar)
        
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.trailing.equalTo(view.safeAreaLayoutGuide).offset(-10)
            make.height.equalTo(50)
        }
    }
}
