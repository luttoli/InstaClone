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
    
    //로그인뷰 전체 UI를 스택뷰로 설정하면 그 중 하나면 우측정렬이 어려워서 개별적으로 함
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
    
    //로그인 버튼
    lazy var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.setImage(UIImage(named: "LoginButton.png"), for: .normal)
//        loginButton.setImage(UIImage(named: "LoginButton.png"), for: .highlighted) //눌렀을때 클릭되면서 알파처리되듯이 눌린 액션
        return loginButton
    }()
    
    //facebook 버튼
    lazy var facebookButton: UIButton = {
        let facebookButton = UIButton()
        facebookButton.setImage(UIImage(named: "FacebookLoginButton.png"), for: .normal)
        return facebookButton
    }()
    
    //or 이미지
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
        addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(instaLogoImageView)
        contentView.addSubview(textFieldStackView)
        contentView.addSubview(forgotButton)
        contentView.addSubview(loginButton)
        contentView.addSubview(facebookButton)
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
