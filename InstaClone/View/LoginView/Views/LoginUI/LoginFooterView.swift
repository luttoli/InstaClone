//
//  LoginFooterView.swift
//  InstaClone
//
//  Created by 김지훈 on 2/26/24.
//

import UIKit

class LoginFooterView: UIView {
    //푸터스택뷰
    lazy var footerStackView: UIStackView = {
        let footerStackView = UIStackView(arrangedSubviews: [footerView, footerLabel])
        footerStackView.customStackView(axis: .vertical, spacing: 20, alignment: .fill)
        return footerStackView
    }()
    
    //푸터
    lazy var footerView: UIView = {
        let footerView = UIView()
        footerView.layer.borderWidth = 2
        footerView.layer.borderColor = CGColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 0.1)
        return footerView
    }()
    
    //푸터라벨
    lazy var footerLabel: UILabel = {
        let footerLabel = UILabel()
        footerLabel.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .regular), textColor: .gray, alignment: .center)
        footerLabel.text = "Instagram OT Facebook"
        return footerLabel
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
        addSubview(footerStackView)

        footerStackView.snp.makeConstraints { make in
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
        }
        
        footerView.snp.makeConstraints { make in
            make.height.equalTo(1)
        }

    }
}
