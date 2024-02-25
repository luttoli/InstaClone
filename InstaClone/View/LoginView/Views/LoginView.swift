//
//  LoginView.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import UIKit
import SnapKit

class LoginView: UIView {
    //로그인 페이지 전체 스택뷰 - 모든 UI가 스택뷰에 있다보니 하나만 우측정렬하는게 어려웠다. 모든걸 우측정렬하고 맞추는게 맞는지 모르겠다
    lazy var loginPageStackView: UIStackView = {
        let loginPageStackView = UIStackView(arrangedSubviews: [instaLogoImageView, idTextField, passwordTextField, forgotButton, loginButton, facebookButton])
        loginPageStackView.customStackView(axis: .vertical, spacing: Constants.coustomHorizontalMargin, alignment: .trailing)
        return loginPageStackView
    }()
    
    //인스타 로고 이미지
    lazy var instaLogoImageView: UIImageView = {
        let instaLogoImageView = UIImageView()
        instaLogoImageView.image = UIImage(named: "InstagramLogo.png")
        instaLogoImageView.customImageView(contentMode: .scaleAspectFit, clipsToBounds: true, tintColor: .coustomSpecificareaColor, cornerRadius: Constants.coustomCornerRadius)
        return instaLogoImageView
    }()
    
    //텍스트필드 스택뷰
    lazy var textFieldStackView: UIStackView = {
        let textFieldStackView = UIStackView(arrangedSubviews: [idTextField, passwordTextField])
        textFieldStackView.customStackView(axis: .vertical, spacing: Constants.coustomHorizontalMargin, alignment: .fill)
        return textFieldStackView
    }()
    
    //텍스트필드 텍스트 좌측 여백... 띄어쓰기로라도 일단 ㅠ - 저번에는 빈 뷰?를 추가했던거같은데
    //아이디 텍스트필드
    lazy var idTextField: UITextField = {
        let idTextField = UITextField()
        idTextField.customIdTextField(placeholder: "   이메일을 입력하세요.", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize14, weight: .regular), textColor: .black, alignment: .left, keyboardType: .default)
        return idTextField
    }()
    
    //비밀번호 텍스트필드
    lazy var passwordTextField: UITextField = {
        let idTextField = UITextField()
        idTextField.customPasswordTextField(placeholder: "   비밀번호를 입력하세요.", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize14, weight: .regular), textColor: .black, alignment: .left, keyboardType: .default)
        return idTextField
    }()
    
    //비밀번호 찾기 버튼
    lazy var forgotButton: UIButton = {
        let forgotButton = UIButton()
        forgotButton.customButton(text: "Forgot password?", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize14, weight: .regular), titleColor: .systemBlue, backgroundColor: .clear)
        
        return forgotButton
    }()
    
    //로그인 버튼
    lazy var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.customButton(text: "Log in", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize16, weight: .medium), titleColor: .white, backgroundColor: .systemBlue)
        return loginButton
    }()
    
    //facebook 버튼
    lazy var facebookButton: UIButton = {
        let facebookButton = UIButton()
        facebookButton.customButton(text: "Log in with FaceBook", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize16, weight: .medium), titleColor: .systemBlue, backgroundColor: .clear)
        return facebookButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    var loginButtonAction: (() -> Void)?
    
    private func setupUI() {
        addSubview(loginPageStackView)
        
        loginPageStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        instaLogoImageView.snp.makeConstraints { make in
            make.width.equalTo(128)
            make.height.equalTo(49)
            make.centerX.equalToSuperview()
        }
        
        idTextField.snp.makeConstraints { make in
            make.leading.equalToSuperview()
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.leading.equalToSuperview()
        }
        
        loginButton.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.height.equalTo(44)
        }
        
        facebookButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
        }

        loginButton.addAction(UIAction(handler: { [weak self] _ in
            self?.loginButtonAction?()
        }), for: .touchUpInside)
        


//이렇게 따로하면 버튼액션 반응없음; 왜지??? - 뷰모델에서 했으니까 다르려나?
//        addSubview(instaLogoImageView)
//        addSubview(textFieldStackView)
//        addSubview(forgotButton)
//        addSubview(loginButton)
//        addSubview(facebookButton)
//        
//        instaLogoImageView.snp.makeConstraints { make in
//            make.top.equalTo(safeAreaLayoutGuide).offset(150)
//            make.centerX.equalToSuperview()
//            make.width.equalTo(182)
//            make.height.equalTo(49)
//        }
//        
//        textFieldStackView.snp.makeConstraints { make in
//            make.top.equalTo(instaLogoImageView.snp.bottom).offset(30)
//            make.leading.equalTo(safeAreaLayoutGuide)
//            make.trailing.equalTo(safeAreaLayoutGuide)
//        }
//        
//        forgotButton.snp.makeConstraints { make in
//            make.top.equalTo(textFieldStackView.snp.bottom).offset(20)
//            make.trailing.equalTo(safeAreaLayoutGuide)
//        }
//        
//        loginButton.snp.makeConstraints { make in
//            make.top.equalTo(forgotButton.snp.bottom).offset(30)
//            make.leading.equalTo(safeAreaLayoutGuide)
//            make.trailing.equalTo(safeAreaLayoutGuide)
//            make.height.equalTo(44)
//        }
//        
//        facebookButton.snp.makeConstraints { make in
//            make.top.equalTo(loginButton.snp.bottom).offset(30)
//            make.leading.equalTo(safeAreaLayoutGuide)
//            make.trailing.equalTo(safeAreaLayoutGuide)
//        }
//        
//        loginButton.addAction(UIAction(handler: { [weak self] _ in
//            self?.loginButtonAction?()
//        }), for: .touchUpInside)
    }
}
