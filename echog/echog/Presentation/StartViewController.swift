//
//  LogInViewController.swift
//  echog
//
//  Created by minsong kim on 9/18/24.
//

import UIKit
import SnapKit

class StartViewController: UIViewController {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .specialTitle
        label.textAlignment = .center
        label.text = "echog"
        label.textColor = .background1
        
        return label
    }()
    
    private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = .regularCaption1
        label.textAlignment = .center
        label.text = "내 생각을 공유할 수 있는 일기 커뮤니티"
        label.textColor = .background1
        
        return label
    }()
    
    private let logoImageView: UIImageView = {
        let view = UIImageView(image: .echo)
        view.contentMode = .scaleAspectFit
        
        return view
    }()
    
    private let signInButton: UIButton = {
        let button = MainButton(color: .light, title: "시작하기")
        
        return button
    }()
    
    private let questionLabel: UILabel = {
        let label = UILabel()
        label.font = .mediumCaption2
        label.textAlignment = .right
        label.text = "이미 계정이 있나요?"
        label.textColor = .white
        
        return label
    }()
    
    private let logInButton: UIButton = {
        let button = TextButton(color: .light, title: "로그인")
        button.contentHorizontalAlignment = .leading
        
        return button
    }()

    override func viewDidLoad() {
        view.backgroundColor = .black
        super.viewDidLoad()
        configureView()
        configureLabels()
        configureLoginView()
        configureButton()
    }

    private func configureLabels() {
        view.addSubview(subtitleLabel)
        view.addSubview(titleLabel)
        
        subtitleLabel.snp.makeConstraints { make in
            make.bottom.equalTo(logoImageView.snp.top).offset(-21)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(subtitleLabel.snp.top).offset(-21)
            make.centerX.leading.trailing.equalTo(subtitleLabel)
        }
    }
    
    private func configureView() {
        view.addSubview(logoImageView)
        
        logoImageView.snp.makeConstraints { make in
            make.height.equalTo(250)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-80)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(50)
        }
    }
    
    private func configureButton() {
        view.addSubview(signInButton)
        
        signInButton.snp.makeConstraints { make in
            make.bottom.equalTo(questionLabel.snp.top).offset(-12)
            make.centerX.leading.trailing.equalTo(titleLabel)
            make.height.equalTo(50)
        }
    }
    
    private func configureLoginView() {
        view.addSubview(questionLabel)
        view.addSubview(logInButton)

        questionLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-80)
            make.centerX.equalToSuperview().offset(-20)
        }
        
        logInButton.snp.makeConstraints { make in
            make.centerY.equalTo(questionLabel)
            make.leading.equalTo(questionLabel.snp.trailing).offset(4)
        }
    }
}

#Preview {
    let vc = StartViewController()
    
    return vc
}

