//
//  LocationViewController.swift
//  InstaClone
//
//  Created by 김지훈 on 3/18/24.
//

import UIKit

class LocationViewController: UIViewController {
    //
    var locationViewModel = LocationViewModel(feed: Feed(nickName: String(), profileImage: UIImage(), location: String(), feedImage: [String()], likeStatus: Bool(), likedBy: [], likeCount: Int(), content: String(), comment: []))

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .coustomBackgroundColor
        navigationUI()
    }

    func navigationUI() {
        navigationController?.navigationBar.backgroundColor = .clear
        
        navigationItem.title = locationViewModel.locationDetailData?.location ?? ""
        
    }
}
