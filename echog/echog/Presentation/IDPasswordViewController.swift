//
//  IDPasswordViewController.swift
//  echog
//
//  Created by minsong kim on 9/20/24.
//

import UIKit

class IDPasswordViewController: UIViewController {
    private let navigationBar = NavigationBar(title: "회원가입", isBackButton: true)
    
    private let idLabel: UILabel = {
        let label = UILabel()
        label.font = .mediumCaption1
        label.textColor = .grayscale80ButtonText2
        label.text = "아이디 *"
        
        return label
    }()
    
    private let idTextField: UITextField = {
        let textField = UITextField()
        textField.clipsToBounds = true
        textField.isEnabled = false
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .grayscale10Stroke
        textField.placeholder = "010-****-****"
        textField.isUserInteractionEnabled = false
        textField.addLeftPadding(size: 7)
        
        return textField
    }()
    
    private let idCaptionLabel: UILabel = {
        let label = UILabel()
        label.text = "아이디는 전화번호로 자동 설정돼요."
        label.textColor = .grayscale50Caption
        label.font = .mediumCaption2
        
        return label
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.font = .mediumCaption1
        label.textColor = .grayscale80ButtonText2
        label.text = "비밀번호 *"
        
        return label
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.clipsToBounds = true
        textField.isEnabled = false
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .grayscale5ButtonText
        textField.placeholder = "영문/숫자/특수문자 중 2종류 이상 조합"
        textField.addLeftPadding(size: 7)
        
        return textField
    }()
    
    private let passwordCaptionLabel: UILabel = {
        let label = UILabel()
        label.text = "최소 10자리, 최대 13자리로 입력해주세요."
        label.textColor = .grayscale50Caption
        label.font = .mediumCaption2
        
        return label
    }()
    
    private let checkPasswordLabel: UILabel = {
        let label = UILabel()
        label.font = .mediumCaption1
        label.textColor = .grayscale80ButtonText2
        label.text = "비밀번호 확인 *"
        
        return label
    }()
    
    private let checkPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.clipsToBounds = true
        textField.isEnabled = false
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .grayscale5ButtonText
        textField.placeholder = "비밀번호를 다시 입력해서 확인해주세요."
        textField.addLeftPadding(size: 7)
        
        return textField
    }()
    
    private let nextButton: UIButton = MainButton(color: .dark, title: "다음")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .background2
        
        configureNavigationBar()
        configureID()
        configurePassword()
        configureCheckPassword()
        configureNextButton()
    }
    
    private func configureNavigationBar() {
        self.view.addSubview(navigationBar)
        
        navigationBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(50)
        }
    }

    private func configureID() {
        idLabel.asColor(targetText: "*", color: .accent)
        self.view.addSubview(idLabel)
        self.view.addSubview(idTextField)
        self.view.addSubview(idCaptionLabel)
        
        idLabel.snp.makeConstraints { make in
            make.top.equalTo(navigationBar.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
        
        idTextField.snp.makeConstraints { make in
            make.top.equalTo(idLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(idLabel)
            make.height.equalTo(50)
        }
        
        idCaptionLabel.snp.makeConstraints { make in
            make.top.equalTo(idTextField.snp.bottom).offset(4)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
        }
    }
    
    private func configurePassword() {
        passwordLabel.asColor(targetText: "*", color: .accent)
        self.view.addSubview(passwordLabel)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(passwordCaptionLabel)
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(idCaptionLabel.snp.bottom).offset(28)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(passwordLabel)
            make.height.equalTo(50)
        }
        
        passwordCaptionLabel.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(4)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
        }
    }
    
    private func configureCheckPassword() {
        checkPasswordLabel.asColor(targetText: "*", color: .accent)
        self.view.addSubview(checkPasswordLabel)
        self.view.addSubview(checkPasswordTextField)
        
        checkPasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(passwordCaptionLabel.snp.bottom).offset(28)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
        
        checkPasswordTextField.snp.makeConstraints { make in
            make.top.equalTo(checkPasswordLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(checkPasswordLabel)
            make.height.equalTo(50)
        }
    }
    
    private func configureNextButton() {
        self.view.addSubview(nextButton)
        
        nextButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-20)
            make.leading.trailing.equalTo(checkPasswordTextField)
            make.height.equalTo(50)
        }
    }
}

#Preview {
    let vc = IDPasswordViewController()
    
    return vc
}
