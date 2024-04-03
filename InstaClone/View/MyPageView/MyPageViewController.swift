//
//  MyPageViewController.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import UIKit
import SnapKit

class MyPageViewController: UIViewController {
    lazy var myPageScrollView = MyPageScrollView()
    
    lazy var highlightCollectionView = myPageScrollView.highlightCollectionView

    lazy var gridCollectionView = myPageScrollView.gridCollectionView
    lazy var reelsCollectionView = myPageScrollView.reelsCollectionView
    lazy var tagsCollectionView = myPageScrollView.tagsCollectionView
    
    lazy var segmentView = myPageScrollView.segmentView
    
    //세그먼트 컨트롤
    @objc func didChangeValue(segment: UISegmentedControl) {
        switch segment.selectedSegmentIndex {
        case 0:
            showView(gridCollectionView)
            hideViews([reelsCollectionView, tagsCollectionView])
        case 1:
            showView(reelsCollectionView)
            hideViews([gridCollectionView, tagsCollectionView])
        case 2:
            showView(tagsCollectionView)
            hideViews([gridCollectionView, reelsCollectionView])
        default:
            break
        }
    }
    
    func showView(_ view: UIView) {
        view.isHidden = false
    }

    func hideViews(_ views: [UIView]) {
        for view in views {
            view.isHidden = true
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .coustomBackgroundColor
        
        segmentView.segmentView.addTarget(self, action: #selector(didChangeValue(segment:)), for: .valueChanged)
        showView(gridCollectionView)
        hideViews([reelsCollectionView, tagsCollectionView])
        
        navigationUI()
        setupUI()
        setData()
    }
    
    func navigationUI() {
        navigationController?.navigationBar.barTintColor = .coustomBackgroundColor
        
        //왼쪽 카메라 버튼
        let leftNicknameButton = UIButton()
        leftNicknameButton.customTextButton(text: "luttoli", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize20, weight: .bold), titleColor: .black, backgroundColor: .clear)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftNicknameButton)
        
        //오른쪽 만들기 버튼
        let rightMakeButton = UIButton()
        rightMakeButton.setImage(UIImage(named: "New")?.withRenderingMode(.alwaysOriginal), for: .normal)
        //오른쪽 만들기 버튼 클릭 이벤트
        rightMakeButton.addAction(UIAction(handler: { _ in
            print("오른쪽 만들기 버튼 클릭했다.")
            let makeView = MakeViewController()
            
            if let sheet = makeView.sheetPresentationController {
                sheet.detents = [.medium()]
                sheet.prefersGrabberVisible = true
            }
            self.present(makeView, animated: true)
        }), for: .touchUpInside)
        
        //오른쪽 설정 버튼
        let rightSettingButton = UIButton()
        rightSettingButton.setImage(UIImage(named: "Menu")?.withRenderingMode(.alwaysOriginal), for: .normal)
        //오른쪽 설정 버튼 클릭 이벤트
        rightSettingButton.addAction(UIAction(handler: { _ in
            print("오른쪽 메시지 버튼 클릭했다.")
            let settingView = SettingViewController()
            self.navigationController?.pushViewController(settingView, animated: true)
        }), for: .touchUpInside)
        //오른쪽 버튼 스택뷰
        let rightButtonStackView = UIStackView.init(arrangedSubviews: [rightMakeButton, rightSettingButton])
        rightButtonStackView.axis = .horizontal
        rightButtonStackView.spacing = 20
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightButtonStackView)
    }
    
    func setupUI() {
        view.addSubview(myPageScrollView)
        
        myPageScrollView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(view.safeAreaLayoutGuide)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    func setData() {
        highlightCollectionView.delegate = self
        highlightCollectionView.dataSource = self
        
        gridCollectionView.delegate = self
        gridCollectionView.dataSource = self
        
        reelsCollectionView.delegate = self
        reelsCollectionView.dataSource = self
        
        tagsCollectionView.delegate = self
        tagsCollectionView.dataSource = self
    }

}

//
extension MyPageViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == highlightCollectionView {
            return 1
        } else if collectionView == gridCollectionView {
            return 10
        } else if collectionView == reelsCollectionView {
            return 3
        } else if collectionView == tagsCollectionView {
            return 2
        }
        return Int()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == highlightCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HighlightCollectionViewCell.identifier, for: indexPath) as? HighlightCollectionViewCell else { return UICollectionViewCell() }
            
            cell.makeHighlightButton.setImage(UIImage(named: "makeHighlight"), for: .normal)
            cell.highlightLabel.text = "새로 만들기"
            
            return cell
        } else if collectionView == gridCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GridCollectionViewCell.identifier, for: indexPath) as? GridCollectionViewCell else { return UICollectionViewCell() }
            
//            cell
            
            return cell
        } else if collectionView == reelsCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReelsCollectionViewCell.identifier, for: indexPath) as? ReelsCollectionViewCell else { return UICollectionViewCell() }
            
//            cell
            
            return cell
        } else if collectionView == tagsCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TagsCollectionViewCell.identifier, for: indexPath) as? TagsCollectionViewCell else { return UICollectionViewCell() }
            
//            cell
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == highlightCollectionView {
            return CGSize(width: 64, height: 83)
        } else if collectionView == gridCollectionView {
            let width = collectionView.bounds.width / 3
            return CGSize(width: width, height: width)
        } else if collectionView == reelsCollectionView {
            let width = collectionView.bounds.width / 3
            return CGSize(width: width, height: width * 2)
        } else if collectionView == tagsCollectionView {
            let width = collectionView.bounds.width / 3
            return CGSize(width: width, height: width)
        }
        return CGSize()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == highlightCollectionView {
            return 20
        } else {
            return 1
        }
//        return CGFloat()
    }
}
