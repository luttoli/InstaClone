//
//  HighlightCollectionViewCell.swift
//  InstaClone
//
//  Created by 김지훈 on 4/3/24.
//

import UIKit

class HighlightCollectionViewCell: UICollectionViewCell {
    //
    lazy var highlightStackView: UIStackView = {
        let highlightStackView = UIStackView(arrangedSubviews: [makeHighlightButton, highlightLabel])
        highlightStackView.customStackView(axis: .vertical, spacing: 5, alignment: .fill)
        return highlightStackView
    }()
    
    //
    lazy var makeHighlightButton: UIButton = {
        let makeHighlightButton = UIButton()
        return makeHighlightButton
    }()
    
    //
    lazy var highlightLabel: UILabel = {
        let highlightLabel = UILabel()
        highlightLabel.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .regular), textColor: .black, alignment: .center)
        return highlightLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("Not implemented required init?(coder: NSCoder)")
    }
    
    func setupUI() {
        contentView.addSubview(highlightStackView)
        
        highlightStackView.snp.makeConstraints { make in
            make.top.equalTo(contentView.safeAreaLayoutGuide)
            make.leading.equalTo(contentView.safeAreaLayoutGuide)
            make.trailing.equalTo(contentView.safeAreaLayoutGuide)
            make.bottom.equalTo(contentView.safeAreaLayoutGuide)
        }
        
        makeHighlightButton.snp.makeConstraints { make in
            make.width.height.equalTo(64)
        }
    }
}
