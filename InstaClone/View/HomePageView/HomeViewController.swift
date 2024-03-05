//
//  HomeViewController.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import UIKit

class HomeViewController: UIViewController {
    //홈 화면의 전체 테이블뷰
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
        
        //왼쪽 카메라 버튼
        let leftCameraButton = UIButton()
        leftCameraButton.setImage(UIImage(named: "CameraIcon.png")?.withRenderingMode(.alwaysOriginal), for: .normal)
        //왼쪽 카메라 버튼 클릭 이벤트
        leftCameraButton.addAction(UIAction(handler: { _ in
            print("왼쪽 카메라 버튼 클릭했다.")
        }), for: .touchUpInside)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftCameraButton)
        
        //네베게이션 로고 이미지
        let logoImage = UIImage(named: "InstagramSLogo.png")
        navigationItem.titleView = UIImageView(image: logoImage)
        
        //오른쪽 티비 버튼
        let rightFrameButton = UIButton()
        rightFrameButton.setImage(UIImage(named: "IGTV.png")?.withRenderingMode(.alwaysOriginal), for: .normal)
        //오른쪽 티비 버튼 클릭 이벤트
        rightFrameButton.addAction(UIAction(handler: { _ in
            print("오른쪽 티비 버튼 클릭했다.")
        }), for: .touchUpInside)
        
        //오른쪽 메세지 버튼
        let rightMessangerButton = UIButton()
        rightMessangerButton.setImage(UIImage(named: "Messanger.png")?.withRenderingMode(.alwaysOriginal), for: .normal)
        //오른쪽 메세지 버튼 클릭 이벤트
        rightMessangerButton.addAction(UIAction(handler: { _ in
            print("오른쪽 메시지 버튼 클릭했다.")
        }), for: .touchUpInside)
        
        //오른쪽 버튼 스택뷰
        let rightButtonStackView = UIStackView.init(arrangedSubviews: [rightFrameButton, rightMessangerButton])
        rightButtonStackView.axis = .horizontal
        rightButtonStackView.spacing = 20
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightButtonStackView)
    }
    
    func setupUI() {
        view.addSubview(homeTableView)
        
        homeTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(view.safeAreaLayoutGuide)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    func setData() {
        homeTableView.delegate = self
        homeTableView.dataSource = self
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    //테이블뷰 헤더뷰 설정
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let storyHeaderView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "StoryHeaderView") as? StoryHeaderView else { return UIView() }
        
        //헤더뷰에서 쓸 콜랙션뷰 설정
        storyHeaderView.storyCollectionView.delegate = self
        storyHeaderView.storyCollectionView.dataSource = self

        return storyHeaderView
    }
    
    //테이블뷰 헤더뷰 높이 - 없어도 되는데..?
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 98
    }
    
    //테이블뷰 셀 갯수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FeedData.feedList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as? HomeTableViewCell else { return UITableViewCell() }
        
        //셀 선택 효과 없애기
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        cell.backgroundColor = .coustomBackgroundColor
        
        cell.profileImage.image = FeedData.feedList[indexPath.row].profileImage
        cell.profileNickNameLabel.text = FeedData.feedList[indexPath.row].nickName
        cell.profileLocationLabel.text = FeedData.feedList[indexPath.row].location
//        cell.feedImageCollectionView
        cell.likebyImage.image = LikedbyData.likedList[indexPath.row].likedImage
        cell.likedbyFullText.attributedText = NSMutableAttributedString()
            .regular(string: "Liked by", fontName: "SpoqaHanSansNeo-Regular", fontSize: 12)
            .bold(string: " \(LikedbyData.likedList[indexPath.row].likedName)", fontName: "SpoqaHanSansNeo-Bold", fontSize: 12)
            .regular(string: " and", fontName: "SpoqaHanSansNeo-Regular", fontSize: 12)
            .bold(string: " \(FeedData.feedList[indexPath.row].likeCount) others", fontName: "SpoqaHanSansNeo-Bold", fontSize: 12)
        cell.feedInfoLabel.attributedText = NSMutableAttributedString()
            .bold(string: "\(FeedData.feedList[indexPath.row].nickName)", fontName: "SpoqaHanSansNeo-Bold", fontSize: 12)
            .regular(string: "  \(FeedData.feedList[indexPath.row].content)", fontName: "SpoqaHanSansNeo-Regular", fontSize: 12)
        
        return cell
    }
    
    //셀 높이
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }

}


//콜랙션뷰 설정
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
        cell.storyImage.image = StoryData.storyList[indexPath.row].storyImage
        
        //라이브 상태 이미지는 상태에 따라 노출, 비노출
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
