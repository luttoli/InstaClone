//
//  CommentViewController.swift
//  InstaClone
//
//  Created by 김지훈 on 3/19/24.
//

import UIKit

class CommentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .coustomBackgroundColor
        navigationUI()
    }
    
    
    func navigationUI() {
        navigationController?.navigationBar.backgroundColor = .coustomBackgroundColor
        navigationItem.title = "댓글"
    }

}
