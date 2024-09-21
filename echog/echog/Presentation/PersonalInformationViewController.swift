//
//  PersonalInformationViewController.swift
//  echog
//
//  Created by minsong kim on 9/20/24.
//

import UIKit

class PersonalInformationViewController: UIViewController {
    private let navigationBar = NavigationBar(title: "회원가입", isBackButton: true)
    
    private let phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.font = .mediumCaption1
        label.textColor = .grayscale80ButtonText2
        label.text = "휴대폰 번호 *"
        
        return label
    }()
    
    private let phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.clipsToBounds = true
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .grayscale5ButtonText
        textField.placeholder = "010-****-****"
        textField.addLeftPadding(size: 7)
        
        return textField
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.font = .mediumCaption1
        label.textColor = .grayscale80ButtonText2
        label.text = "이메일 주소 *"
        
        return label
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.clipsToBounds = true
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .grayscale5ButtonText
        textField.placeholder = "이메일 주소를 입력해주세요"
        textField.addLeftPadding(size: 7)
        
        return textField
    }()
    
    private let nextButton: UIButton = MainButton(color: .dark, title: "다음")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .background2
        
        configureNavigationBar()
        configurePhoneNumber()
        configureEmail()
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

    private func configurePhoneNumber() {
        phoneNumberLabel.asColor(targetText: "*", color: .accent)
        self.view.addSubview(phoneNumberLabel)
        self.view.addSubview(phoneNumberTextField)
        
        phoneNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(navigationBar.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
        
        phoneNumberTextField.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(phoneNumberLabel)
            make.height.equalTo(50)
        }
    }
    
    private func configureEmail() {
        emailLabel.asColor(targetText: "*", color: .accent)
        self.view.addSubview(emailLabel)
        self.view.addSubview(emailTextField)
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberTextField.snp.bottom).offset(28)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(emailLabel)
            make.height.equalTo(50)
        }
    }
    
    private func configureNextButton() {
        self.view.addSubview(nextButton)
        
        nextButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-20)
            make.leading.trailing.equalTo(emailTextField)
            make.height.equalTo(50)
        }
    }
}

#Preview {
    let vc = PersonalInformationViewController()
    
    return vc
}
