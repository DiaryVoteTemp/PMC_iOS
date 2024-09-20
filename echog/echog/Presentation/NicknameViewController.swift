//
//  NicknameViewController.swift
//  echog
//
//  Created by minsong kim on 9/20/24.
//

import UIKit
import SnapKit

class NicknameViewController: UIViewController {
    private let navigationBar = NavigationBar(title: "회원가입", isBackButton: true)
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .mediumCaption1
        label.textColor = .grayscale80ButtonText2
        label.text = "별명을 지어주세요! *"
        
        return label
    }()
    
    private let nicknameTextField: UITextField = {
        let textField = UITextField()
        textField.clipsToBounds = true
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .grayscale5ButtonText
        textField.placeholder = "user000000"
        textField.addLeftPadding(size: 7)
        
        return textField
    }()
    
    private let captionLabel: UILabel = {
        let label = UILabel()
        label.text = "최소 2자 이상 한글, 영어, 숫자 가능해요."
        label.textColor = .grayscale50Caption
        label.font = .mediumCaption2
        
        return label
    }()
    
    private let nextButton: UIButton = MainButton(color: .dark, title: "다음")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .background2
    
        configureNavigationBar()
        configureDescriptionLabel()
        configureNicknameTextField()
        configureCaptionLabel()
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

    private func configureDescriptionLabel() {
        descriptionLabel.asColor(targetText: "*", color: .accent)
        self.view.addSubview(descriptionLabel)
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(navigationBar.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
    }
    
    private func configureNicknameTextField() {
        self.view.addSubview(nicknameTextField)
        
        nicknameTextField.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(descriptionLabel)
            make.height.equalTo(50)
        }
    }
    
    private func configureCaptionLabel() {
        self.view.addSubview(captionLabel)
        
        captionLabel.snp.makeConstraints { make in
            make.top.equalTo(nicknameTextField.snp.bottom).offset(4)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
        }
    }
    
    private func configureNextButton() {
        self.view.addSubview(nextButton)
        
        nextButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-20)
            make.leading.trailing.equalTo(nicknameTextField)
            make.height.equalTo(50)
        }
    }
}

#Preview {
    let vc = NicknameViewController()
    
    return vc
}
