//
//  SegmentView.swift
//  InstaClone
//
//  Created by 김지훈 on 3/31/24.
//

import UIKit

class SegmentView: UIView {
    lazy var segmentView: UISegmentedControl = {
        let segmentView = UISegmentedControl()
        segmentView.selectedSegmentIndex = 0
        
        guard let grid = UIImage(named: "Grid"),
              let reel = UIImage(named: "Reel"),
              let tags = UIImage(named: "Tags") else {
            fatalError("dd")
        }
        
        segmentView.insertSegment(with: grid, at: 0, animated: true)
        segmentView.insertSegment(with: reel, at: 1, animated: true)
        segmentView.insertSegment(with: tags, at: 2, animated: true)
        
        //기본 회색 배경색 제거
        segmentView.setBackgroundImage(UIImage(), for: .normal, barMetrics: .default)
        segmentView.setBackgroundImage(UIImage(), for: .selected, barMetrics: .default)
        segmentView.setBackgroundImage(UIImage(), for: .highlighted, barMetrics: .default)
        //디바이더 제거
        segmentView.setDividerImage(UIImage(), forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        return segmentView
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
        addSubview(segmentView)
        
        segmentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

