//
//  HomeViewController.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import UIKit

class HomeViewController: UIViewController {
    //
    
    
    //
    lazy var homeTableView = HomeTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .coustomBackgroundColor
        
        navigationUI()
        setupUI()
        setData()
    }
    
    //네비게이션 UI
    func navigationUI() {
        navigationController?.navigationBar.barTintColor = .coustomBackgroundColor
                
        navigationItem.leftBarButtonItem = leftCameraButton
        
        let logoImage = UIImage(named: "InstagramSLogo.png")
        navigationItem.titleView = UIImageView(image: logoImage)
        
        navigationItem.rightBarButtonItems = [rightMessangerButton, rightFrameButton]
    }
    
    //왼쪽 카메라 버튼
    lazy var leftCameraButton: UIBarButtonItem = {
        let leftCameraButton = UIBarButtonItem(image: UIImage(named: "CameraIcon.png"), style: .plain, target: self, action: #selector(cameraButtonAction))
        leftCameraButton.tintColor = .black
        return leftCameraButton
    }()
    
    //왼쪽 카메라 버튼 액션
    @objc func cameraButtonAction() {
        print("clicked cameraButtonAction")
    }
    
    //오른쪽 티비 버튼
    lazy var rightFrameButton: UIBarButtonItem = {
        let rightFrameButton = UIBarButtonItem(image: UIImage(named: "IGTV.png"), style: .plain, target: self, action: #selector(frameButtonAction))
        rightFrameButton.tintColor = .black
        return rightFrameButton
    }()
    
    //오른쪽 티비 버튼 액션
    @objc func frameButtonAction() {
        print("clicked frameButtonAction")
    }
    
    //오른쪽 메세지 버튼
    lazy var rightMessangerButton: UIBarButtonItem = {
        let rightMessangerButton = UIBarButtonItem(image: UIImage(named: "Messanger.png"), style: .plain, target: self, action: #selector(messangerButtonAction))
        rightMessangerButton.tintColor = .black
        return rightMessangerButton
    }()
    
    //오른쪽 메시지 버튼 액션
    @objc func messangerButtonAction() {
        print("clicked messangerButtonAction")
    }
    
    func setupUI() {
//        view.addSubview(storyCollectionView)
//        
//        storyCollectionView.snp.makeConstraints { make in
//            make.top.equalTo(view.safeAreaLayoutGuide)
//            make.leading.equalTo(view.safeAreaLayoutGuide).offset(Constants.coustomHorizontalMargin)
//            make.trailing.equalTo(view.safeAreaLayoutGuide).offset(-Constants.coustomHorizontalMargin)
//            make.height.equalTo(100)
//        }
        
        view.addSubview(homeTableView)
        
        homeTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(view.safeAreaLayoutGuide)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
    }
    
    func setData() {
//        storyCollectionView.delegate = self
//        storyCollectionView.dataSource = self
        
        homeTableView.delegate = self
        homeTableView.dataSource = self
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    //테이블뷰 헤더뷰 설정
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let storyHeaderView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "StoryHeaderView") as? StoryHeaderView else { return UIView() }
        
        storyHeaderView.storyCollectionView.delegate = self
        storyHeaderView.storyCollectionView.dataSource = self

        return storyHeaderView
    }
    
    //테이블뷰 헤더뷰 높이
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 98
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FeedTableViewCell.identifier, for: indexPath) as? FeedTableViewCell else { return UITableViewCell() }
        
        //셀 선택 효과 없애기
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        
        
        return cell
    }
    

}







extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        if collectionView == StoryHeaderView().storyCollectionView {
//            return StoryData.storyList.count
//        }
//        return Int()
        
        return StoryData.storyList.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if collectionView == StoryHeaderView().storyCollectionView {
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as? StoryCollectionViewCell else { return UICollectionViewCell() }
//            
//            cell.storyNickName.text = StoryData.storyList[indexPath.row].nickName
//            
//            return cell
//        }
//        
//        return UICollectionViewCell()
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as? StoryCollectionViewCell else { return UICollectionViewCell() }
        
        cell.storyNickName.text = StoryData.storyList[indexPath.row].nickName
        
        if StoryData.storyList[indexPath.row].liveStatus == false {
            cell.storyStatusImage.isHidden = true
        } else {
            cell.storyStatusImage.isHidden = false
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        if collectionView == StoryHeaderView().storyCollectionView {
//            return CGSize(width: 62, height: 98)
//        }
//        return CGSize()
        
        return CGSize(width: 62, height: 98)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        if collectionView == StoryHeaderView().storyCollectionView {
//            return 20
//        }
//        
//        return CGFloat()
        
        return 20
    }
}
