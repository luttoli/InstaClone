//
//  CommentViewController.swift
//  InstaClone
//
//  Created by 김지훈 on 3/19/24.
//

import UIKit
import SnapKit

class CommentViewController: UIViewController {
    lazy var commentTableView = CommentTableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .coustomBackgroundColor
        navigationUI()
        setupUI()
        setData()
    }

    func navigationUI() {
        navigationController?.navigationBar.backgroundColor = .coustomBackgroundColor
        navigationItem.title = "댓글"
        
        let rightMessangerButton = UIButton()
        rightMessangerButton.setImage(UIImage(named: "Messanger.png")?.withRenderingMode(.alwaysOriginal), for: .normal)
        //오른쪽 메세지 버튼 클릭 이벤트
        rightMessangerButton.addAction(UIAction(handler: { _ in
            print("오른쪽 메시지 버튼 클릭했다.")
            let shareView = ShareViewController()
            //네비게이션 추가
            let navigationController = UINavigationController(rootViewController: shareView)
            navigationController.navigationBar.backgroundColor = .clear
            navigationController.modalPresentationStyle = .pageSheet
            
            if let sheet = navigationController.sheetPresentationController {
                sheet.detents = [.large(), .medium()]
                sheet.selectedDetentIdentifier = .medium
                sheet.prefersGrabberVisible = true
            }
            
            self.present(navigationController, animated: true)
        }), for: .touchUpInside)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightMessangerButton)
    }
    
    func setupUI() {
        view.addSubview(commentTableView)
        
        commentTableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func setData() {
        commentTableView.delegate = self
        commentTableView.dataSource = self
    }

}

//
extension CommentViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CommentData.commentList1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CommentTableViewCell.identifier, for: indexPath) as? CommentTableViewCell else { return UITableViewCell() }
        
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        cell.backgroundColor = .coustomBackgroundColor
        
        //
        cell.profileNickNameButton.setTitle(FeedData.feedList[indexPath.row].comment[indexPath.row].name, for: .normal)
        cell.comment.text = FeedData.feedList[indexPath.row].comment[indexPath.row].comments
        
        cell.heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
        
        return cell
    }
}
