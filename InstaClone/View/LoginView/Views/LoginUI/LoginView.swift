//
//  LoginView.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import UIKit
import SnapKit

class LoginView: UIView {
    //스크롤뷰
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    let contentView: UIView = {
        let contentView = UIView()
        return contentView
    }()
    
    //로그인 페이지 전체 스택뷰 - 모든 UI가 스택뷰에 있다보니 하나만 우측정렬하는게 어려웠다. 모든걸 우측정렬하고 맞추는게 맞는지 모르겠다
//    lazy var loginPageStackView: UIStackView = {
//        let loginPageStackView = UIStackView(arrangedSubviews: [instaLogoImageView, textFieldStackView, forgotButton, loginButton, facebookButton, orStackView, signupStackView])
//        loginPageStackView.customStackView(axis: .vertical, spacing: Constants.coustomHorizontalMargin, alignment: .trailing)
//        return loginPageStackView
//    }()
    
    //인스타 로고 이미지
    lazy var instaLogoImageView: UIImageView = {
        let instaLogoImageView = UIImageView()
        instaLogoImageView.image = UIImage(named: "InstagramBLogo.png")
        instaLogoImageView.customImageView(contentMode: .scaleAspectFit, clipsToBounds: true, tintColor: .coustomSpecificareaColor, cornerRadius: Constants.coustomCornerRadius)
        return instaLogoImageView
    }()
    
    //텍스트필드 스택뷰
    lazy var textFieldStackView: UIStackView = {
        let textFieldStackView = UIStackView(arrangedSubviews: [idTextField, passwordTextField])
        textFieldStackView.customStackView(axis: .vertical, spacing: Constants.coustomHorizontalMargin, alignment: .fill)
        return textFieldStackView
    }()
    
    //아이디 텍스트필드
    lazy var idTextField: UITextField = {
        let idTextField = UITextField()
        idTextField.customIdTextField(placeholder: "이메일 또는 전화번호를 입력하세요.", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize14, weight: .regular), textColor: .black, alignment: .left, keyboardType: .default)
        return idTextField
    }()
    
    //비밀번호 텍스트필드
    lazy var passwordTextField: UITextField = {
        let idTextField = UITextField()
        idTextField.customPasswordTextField(placeholder: "비밀번호를 입력하세요.", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize14, weight: .regular), textColor: .black, alignment: .left, keyboardType: .default)
        return idTextField
    }()
    
    //비밀번호 찾기 버튼
    lazy var forgotButton: UIButton = {
        let forgotButton = UIButton()
        forgotButton.customTextButton(text: "Forgot password?", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .regular), titleColor: .systemBlue, backgroundColor: .clear)
        return forgotButton
    }()
    
//    //로그인 버튼
//    lazy var loginButton: UIButton = {
//        let loginButton = UIButton()
//        loginButton.customButton(text: "Log in", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize14, weight: .medium), titleColor: .white, backgroundColor: .systemBlue)
//        return loginButton
//    }()
    
    lazy var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.setImage(UIImage(named: "LoginButton.png"), for: .normal)
//        loginButton.setImage(UIImage(named: "LoginButton.png"), for: .highlighted) //눌렀을때 클릭되면서 알파처리되듯이 눌린 액션
        return loginButton
    }()
    
    //facebook 버튼
//    lazy var facebookButton: UIButton = {
//        let facebookButton = UIButton()
//        facebookButton.customButton(text: "📘 Log in with Facebook", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize16, weight: .regular), titleColor: .systemBlue, backgroundColor: .clear)
//        return facebookButton
//    }()
    
    lazy var facebookButton: UIButton = {
        let facebookButton = UIButton()
        facebookButton.setImage(UIImage(named: "FacebookLoginButton.png"), for: .normal)
        return facebookButton
    }()
    
//    //or스택뷰
//    lazy var orStackView: UIStackView = {
//        let orStackView = UIStackView(arrangedSubviews: [leftView, orLabel, rightView])
//        orStackView.customStackView(axis: .horizontal, spacing: 0, alignment: .center)
//        orStackView.distribution = .fillEqually
//        return orStackView
//    }()
//    
//    //or 왼쪽뷰를 선으로 쓸라고
//    lazy var leftView: UIView = {
//        let leftView = UIView()
//        leftView.layer.borderWidth = 1
//        leftView.layer.borderColor = CGColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
//        return leftView
//    }()
//    
//    //or라벨
//    lazy var orLabel: UILabel = {
//        let orLabel = UILabel()
//        orLabel.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize12, weight: .regular), textColor: .gray, alignment: .center)
//        orLabel.text = "OR"
//        return orLabel
//    }()
//
//    //or 왼쪽뷰를 선으로 쓸라고
//    lazy var rightView: UIView = {
//        let rightView = UIView()
//        rightView.layer.borderWidth = 2
//        rightView.layer.borderColor = CGColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
//        return rightView
//    }()
    
    lazy var orImageView: UIImageView = {
        let orImageView = UIImageView()
        orImageView.image = UIImage(named: "BorderImage.png")
        orImageView.customImageView(contentMode: .scaleAspectFit, clipsToBounds: true, tintColor: .coustomSpecificareaColor, cornerRadius: Constants.coustomCornerRadius)
        return orImageView
    }()
    
    //회원가입스택뷰
    lazy var signupStackView: UIStackView = {
        let signupStackView = UIStackView(arrangedSubviews: [accountLabel, signupButton])
        signupStackView.customStackView(axis: .horizontal, spacing: 10, alignment: .fill)
        return signupStackView
    }()
    
    //어카운트라벨
    lazy var accountLabel: UILabel = {
        let accountLabel = UILabel()
        accountLabel.customLabel(font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize14, weight: .regular), textColor: .gray, alignment: .center)
        accountLabel.text = "Don't have an account?"
        return accountLabel
    }()
    
    //회원가입버튼
    lazy var signupButton: UIButton = {
        let signupButton = UIButton()
        signupButton.customTextButton(text: "Sign up.", font: UIFont.spoqaHanSansNeo(size: Constants.coustomFontSize14, weight: .regular), titleColor: .systemBlue, backgroundColor: .clear)
        return signupButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    //버튼액션
    var forgotButtonAction: (() -> Void)?
    var loginButtonAction: (() -> Void)?
    var facebookButtonAction: (() -> Void)?
    var signupButtonAction: (() -> Void)?
    
    private func setupUI() {
        //스택뷰로 했을때
//        addSubview(loginPageStackView)
//        
//        loginPageStackView.snp.makeConstraints { make in
//            make.edges.equalToSuperview()
//        }
//        
//        instaLogoImageView.snp.makeConstraints { make in
//            make.width.equalTo(182)
//            make.height.equalTo(49)
//            make.leading.equalToSuperview()
//        }
//        
//        textFieldStackView.snp.makeConstraints { make in
//            make.leading.equalToSuperview()
//        }
//        
//        loginButton.snp.makeConstraints { make in
//            make.leading.equalToSuperview()
//            make.height.equalTo(44)
//        }
//        
//        facebookButton.snp.makeConstraints { make in
//            make.centerX.equalToSuperview()
//        }
//
//        loginButton.addAction(UIAction(handler: { [weak self] _ in
//            self?.loginButtonAction?()
//        }), for: .touchUpInside)
//        
//        orStackView.snp.makeConstraints { make in
//            make.leading.equalToSuperview()
//        }
//        
//        leftView.snp.makeConstraints { make in
//            make.height.equalTo(1)
//        }
//        
//        rightView.snp.makeConstraints { make in
//            make.height.equalTo(1)
//        }
//        
//        signupStackView.snp.makeConstraints { make in
//            make.centerX.equalToSuperview()
//        }
        
        //스택뷰 없이
//        addSubview(instaLogoImageView)
//        addSubview(textFieldStackView)
//        addSubview(forgotButton)
//        addSubview(loginButton)
//        addSubview(facebookButton)
//        addSubview(orStackView)
//        addSubview(signupStackView)
        
        addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(instaLogoImageView)
        contentView.addSubview(textFieldStackView)
        contentView.addSubview(forgotButton)
        contentView.addSubview(loginButton)
        contentView.addSubview(facebookButton)
//        contentView.addSubview(orStackView)
        contentView.addSubview(orImageView)
        contentView.addSubview(signupStackView)
        
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.height.equalTo(scrollView)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
        }
        
        instaLogoImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        textFieldStackView.snp.makeConstraints { make in
            make.top.equalTo(instaLogoImageView.snp.bottom).offset(50)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        forgotButton.snp.makeConstraints { make in
            make.top.equalTo(textFieldStackView.snp.bottom).offset(10)
            make.trailing.equalToSuperview()
        }
        
        forgotButton.addAction(UIAction(handler: { [weak self] _ in
            self?.forgotButtonAction?()
        }), for: .touchUpInside)
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(forgotButton.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide)
            make.trailing.equalTo(safeAreaLayoutGuide)
        }
        
        loginButton.addAction(UIAction(handler: { [weak self] _ in
            self?.loginButtonAction?()
        }), for: .touchUpInside)
        
        facebookButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(30)
            make.leading.equalTo(safeAreaLayoutGuide)
            make.trailing.equalTo(safeAreaLayoutGuide)
            make.height.equalTo(18)
        }
        
        facebookButton.addAction(UIAction(handler: { [weak self] _ in
            self?.facebookButtonAction?()
        }), for: .touchUpInside)
        
//        orStackView.snp.makeConstraints { make in
//            make.top.equalTo(facebookButton.snp.bottom).offset(35)
//            make.leading.equalToSuperview()
//            make.trailing.equalToSuperview()
//        }
//        
//        leftView.snp.makeConstraints { make in
//            make.height.equalTo(1)
//        }
//        
//        rightView.snp.makeConstraints { make in
//            make.height.equalTo(1)
//        }
//        
//        signupStackView.snp.makeConstraints { make in
//            make.top.equalTo(orStackView.snp.bottom).offset(35)
//            make.centerX.equalToSuperview()
//        }
        
        orImageView.snp.makeConstraints { make in
            make.top.equalTo(facebookButton.snp.bottom).offset(35)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        signupStackView.snp.makeConstraints { make in
            make.top.equalTo(orImageView.snp.bottom).offset(35)
            make.centerX.equalToSuperview()
        }
        
        signupButton.addAction(UIAction(handler: { [weak self] _ in
            self?.signupButtonAction?()
        }), for: .touchUpInside)
    }
}
