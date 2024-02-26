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
    
    //로그인 푸터뷰
    lazy var loginFooterView = LoginFooterView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .coustomBackgroundColor
        
        //키보드
        registerForKeyboardNotifications()
        setupUI()
        loginViewButtonsAction()
    }
    
    //Keyboard 활성화 시 스크롤
    func registerForKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func keyboardWillShow(_ notification: Notification) {
        guard let userInfo = notification.userInfo,
              let keyboardFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect
        else {
            return
        }
        
        let contentInset = UIEdgeInsets(
            top: 0.0,
            left: 0.0,
            bottom: keyboardFrame.size.height,
            right: 0.0)
        loginView.scrollView.contentInset = contentInset
        loginView.scrollView.scrollIndicatorInsets = contentInset
    }
    
    @objc private func keyboardWillHide(_ notification: Notification) {
        let contentInset = UIEdgeInsets(
            top: 0.0,
            left: 0.0,
            bottom: 0.0,
            right: 0.0)
        loginView.scrollView.contentInset = contentInset
        loginView.scrollView.scrollIndicatorInsets = contentInset
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        loginView.endEditing(true)
    }
    
    //로그인뷰컨트롤러 UI
    func setupUI() {
        view.addSubview(loginView)
        view.addSubview(loginFooterView)
        
        loginView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.height.equalTo(500)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(Constants.coustomHorizontalMargin * 2)
            make.trailing.equalTo(view.safeAreaLayoutGuide).offset(-Constants.coustomHorizontalMargin * 2)
        }
        
        loginFooterView.snp.makeConstraints { make in
            make.leading.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(view.safeAreaLayoutGuide)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-40)
        }
    }
    
    //로그인버튼 액션
    func loginViewButtonsAction() {
        //로그인뷰 - 비밀번호 찾기 버튼 클릭 액션
        loginView.forgotButtonAction = {
            print("forgotButton tad")
            let forgotPasswordView = ForgotPasswordViewController()
            forgotPasswordView.modalTransitionStyle = .coverVertical
            self.present(forgotPasswordView, animated: true, completion: nil)
        }
        
        //로그인뷰 - 로그인 버튼 클릭 액션
        loginView.loginButtonAction = {
            print("loginbutton tad")
            let homeView = CustomTabBarController()
            homeView.modalPresentationStyle = .overFullScreen
            self.present(homeView, animated: true, completion: nil)
        }
        
        //로그인뷰 - 페이스북 로그인 버튼 클릭 액션
        loginView.facebookButtonAction = {
            print("facebookButton tad")
            let facebookLoginView = FacebookLoginViewController()
            facebookLoginView.modalTransitionStyle = .crossDissolve
            self.present(facebookLoginView, animated: true, completion: nil)
        }
        
        //로그인뷰 - 회원가입 버튼 클릭 액션
        loginView.signupButtonAction = {
            print("signupButton tad")
            let signupView = SignupViewController()
            signupView.modalTransitionStyle = .flipHorizontal
            self.present(signupView, animated: true, completion: nil)
        }
    }
    
}
