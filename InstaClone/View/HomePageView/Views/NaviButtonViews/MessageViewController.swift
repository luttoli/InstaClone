//
//  MessageViewController.swift
//  InstaClone
//
//  Created by 김지훈 on 3/18/24.
//

import UIKit

class MessageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .coustomBackgroundColor
        navigationUI()
    }
    
    func navigationUI() {
        navigationController?.navigationBar.barTintColor = .coustomBackgroundColor
        
        navigationItem.title = "My ID"
        
    }

}
