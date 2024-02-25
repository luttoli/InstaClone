//
//  LoginViewController.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    //로그인뷰모델
    var loginViewModel = LoginViewModel()
    
    //로그인뷰
    lazy var loginView = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .coustomBackgroundColor
        
        setupUI()
        loginButtonAction()
    }
    
    //로그인뷰컨트롤러 UI
    func setupUI() {
        view.addSubview(loginView)
        
        loginView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(Constants.coustomHorizontalMargin * 2)
            make.trailing.equalTo(view.safeAreaLayoutGuide).offset(-Constants.coustomHorizontalMargin * 2)
        }
    }
    
    //로그인버튼 액션
    func loginButtonAction() {
//        loginView.loginButtonAction = { [weak self] in
//            self?.loginViewModel.loginButtonAction(navigationController: self?.navigationController, viewController: self ?? UIViewController() as! LoginViewController)
//        }
        
        loginView.loginButtonAction = {
            print("loginbutton tad")
            let homeview = CustomTabBarController()
            homeview.modalPresentationStyle = .overFullScreen
            self.present(homeview, animated: true, completion: nil)
        }
        
        
    }
    
}
