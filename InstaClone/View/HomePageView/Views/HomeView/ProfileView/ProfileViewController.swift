//
//  ProfileViewController.swift
//  InstaClone
//
//  Created by 김지훈 on 3/18/24.
//

import UIKit

class ProfileViewController: UIViewController {
    //
    var profileViewModel = ProfileViewModel(feed: Feed(nickName: String(), profileImage: UIImage(), location: String(), feedImage: [String()], likeStatus: Bool(), likedBy: [], likeCount: Int(), content: String(), comment: []))

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .coustomBackgroundColor    
        navigationUI()
    }
    
    func navigationUI() {
        navigationController?.navigationBar.backgroundColor = .clear
        
        navigationItem.title = profileViewModel.profileDetailData?.nickName ?? ""
        
    }
    

}
