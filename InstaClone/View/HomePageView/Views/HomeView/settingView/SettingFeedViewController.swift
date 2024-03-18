//
//  SettingFeedViewController.swift
//  InstaClone
//
//  Created by 김지훈 on 3/18/24.
//

import UIKit

class SettingFeedViewController: UIViewController {
    //
    lazy var settingFeedCollectionView = SettingFeedCollectionView()
    lazy var settingFeedTableView = SettingFeedTableView()
    
    let firstCellTitle = ["📀\n저장", "🎲\nQR 코드"]
    let secondCellTitle = ["✈️   메뉴 위치가 변경되었습니다."]
    let thirdCellTitle = ["⭐️   즐겨찾기에 추가", "👥   팔로우 취소"]
    let fourthCellTitle = ["🤖   이 계정 정보", "ℹ️   이 게시물이 표시되는 이유", "🙈   숨기기", "🚨   신고"]

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .coustomBackgroundColor
        setupUI()
        setData()
    }

    func setupUI() {
        view.addSubview(settingFeedCollectionView)
        view.addSubview(settingFeedTableView)
        
        settingFeedCollectionView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(30)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide).offset(-20)
            make.height.equalTo(70)
        }
        
        settingFeedTableView.snp.makeConstraints { make in
            make.top.equalTo(settingFeedCollectionView.snp.bottom).offset(4)
            make.leading.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(view.safeAreaLayoutGuide)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    func setData() {
        settingFeedCollectionView.delegate = self
        settingFeedCollectionView.dataSource = self
        settingFeedTableView.delegate = self
        settingFeedTableView.dataSource = self
    }
    

}

extension SettingFeedViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return firstCellTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SettingFeedCollectionViewCell.identifier, for: indexPath) as? SettingFeedCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.backgroundColor = .gray
        cell.layer.cornerRadius = Constants.coustomCornerRadius * 3

        cell.settingFeedMenuTitle.text = firstCellTitle[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.width - 10) / 2
        return CGSize(width: width, height: 70)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

extension SettingFeedViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return secondCellTitle.count
        case 1:
            return thirdCellTitle.count
        case 2:
            return fourthCellTitle.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingFeedTableViewCell.identifier, for: indexPath) as? SettingFeedTableViewCell else { return UITableViewCell() }
        
        //셀 선택 효과 없애기
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        cell.backgroundColor = .gray
        
        switch indexPath.section {
        case 0:
            cell.settingFeedMenuTitle.text = secondCellTitle[indexPath.row]
        case 1:
            cell.settingFeedMenuTitle.text = thirdCellTitle[indexPath.row]
        case 2:
            cell.settingFeedMenuTitle.text = fourthCellTitle[indexPath.row]
        default:
            cell.settingFeedMenuTitle.text = ""
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 60
        case 1:
            return 40
        case 2:
            return 40
        default:
            return 0
        }
    }
    
    //style: .insetGrouped 할 경우 섹션 별 사이 간격을 대신해서 헤더 푸터뷰 높이설정해주면 컨트롤 가능
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        UIView()
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        UIView()
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 2.5
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2.5
    }
}
