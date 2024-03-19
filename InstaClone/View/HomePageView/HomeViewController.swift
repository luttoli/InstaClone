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
            let cameraView = CameraViewController()
            self.navigationController?.pushViewController(cameraView, animated: true)
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
            let tvView = TVViewController()
            self.navigationController?.pushViewController(tvView, animated: true)
        }), for: .touchUpInside)
        
        //오른쪽 메세지 버튼
        let rightMessangerButton = UIButton()
        rightMessangerButton.setImage(UIImage(named: "Messanger.png")?.withRenderingMode(.alwaysOriginal), for: .normal)
        //오른쪽 메세지 버튼 클릭 이벤트
        rightMessangerButton.addAction(UIAction(handler: { _ in
            print("오른쪽 메시지 버튼 클릭했다.")
            let messageView = MessageViewController()
            self.navigationController?.pushViewController(messageView, animated: true)
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
        
        //프로필 이미지 버튼 설정, 클릭 이벤트, 그냥 이미지뷰에서 제스처로
        cell.profileImageButton.setImage(FeedData.feedList[indexPath.row].profileImage, for: .normal)
        cell.profileImageButton.addAction(UIAction(handler: { _ in
            print("프로필 이미지 클릭")
            let profileView = ProfileViewController()
            profileView.profileViewModel.profileDetailData = FeedData.feedList[indexPath.row]
            self.navigationController?.pushViewController(profileView, animated: true)
        }), for: .touchUpInside)
        
        //닉네임 버튼 설정, 클릭 이벤트
        cell.profileNickNameButton.setTitle(FeedData.feedList[indexPath.row].nickName, for: .normal)
        cell.profileNickNameButton.addAction(UIAction(handler: { _ in
            print("프로필 닉네임 클릭")
            let profileView = ProfileViewController()
            profileView.profileViewModel.profileDetailData = FeedData.feedList[indexPath.row]
            self.navigationController?.pushViewController(profileView, animated: true)
        }), for: .touchUpInside)
        
        //지역 버튼 설정, 있고 없고 세팅, 클릭 이벤트
        if FeedData.feedList[indexPath.row].location?.description == nil {
            cell.profileLocationButton.isHidden = true
        } else {
            cell.profileLocationButton.setTitle(FeedData.feedList[indexPath.row].location, for: .normal)
            cell.profileLocationButton.addAction(UIAction(handler: { _ in
                print("프로필 지역 클릭")
                let locationView = LocationViewController()
                locationView.locationViewModel.locationDetailData = FeedData.feedList[indexPath.row]
                self.navigationController?.pushViewController(locationView, animated: true)
            }), for: .touchUpInside)
        }
        
        //좋아요
//        cell.likeButton
        
        //세팅버튼 클릭 이벤트
        cell.settingButton.addAction(UIAction(handler: { _ in
            print("세팅 버튼 클릭")
            let settingView = SettingFeedViewController()
            
            //모달 크기 미디움
            if let sheet = settingView.sheetPresentationController {
                sheet.detents = [.medium()]
                sheet.prefersGrabberVisible = true //Grabber 노출 설정
            }

            self.present(settingView, animated: true)
        }), for: .touchUpInside)
        
        //피드이미지 콜랙션뷰
//        cell.feedImageCollectionView
        
        //댓글
        cell.commentButton.addAction(UIAction(handler: { _ in
            print("댓글 버튼 클릭")
            let commentView = CommentViewController()
            
            if let sheet = commentView.sheetPresentationController {
                sheet.detents = [.large(), .medium()]
                sheet.selectedDetentIdentifier = .large //처음부터 큰 뷰가 나오게하는 설정
                sheet.prefersGrabberVisible = true
            }
            
            self.present(commentView, animated: true)
        }), for: .touchUpInside)
        
        //공유
//        cell.shareButton
        
        //저장
//        cell.saveButton
        
        
        //이미지
        cell.likebyImage.image = LikedbyData.likedList[indexPath.row].likedImage
        
        //좋아요 누른 사람
        cell.likedbyFullText.attributedText = NSMutableAttributedString()
            .regular(string: "Liked by", fontName: "SpoqaHanSansNeo-Regular", fontSize: 12)
            .bold(string: " \(LikedbyData.likedList[indexPath.row].likedName)", fontName: "SpoqaHanSansNeo-Bold", fontSize: 12)
            .regular(string: " and", fontName: "SpoqaHanSansNeo-Regular", fontSize: 12)
            .bold(string: " \(FeedData.feedList[indexPath.row].likeCount) others", fontName: "SpoqaHanSansNeo-Bold", fontSize: 12)
        
        //피드 내용
        cell.feedInfoLabel.attributedText = NSMutableAttributedString()
            .bold(string: "\(FeedData.feedList[indexPath.row].nickName)", fontName: "SpoqaHanSansNeo-Bold", fontSize: 12)
            .regular(string: "  \(FeedData.feedList[indexPath.row].content)", fontName: "SpoqaHanSansNeo-Regular", fontSize: 12)
        
        //컬랙션뷰셀, 뷰 거꾸로 올라와서 여기서 부터 뿌린다, 데이터를 넘겨준다 생각하기
        
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
        return StoryData.storyList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
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
        return CGSize(width: 62, height: 98)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
