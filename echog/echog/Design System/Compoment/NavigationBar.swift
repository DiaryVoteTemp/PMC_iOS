//
//  NavigationBar.swift
//  echog
//
//  Created by minsong kim on 9/20/24.
//

import UIKit
import SnapKit

class NavigationBar: UIView {
    private let backButton: UIButton = {
        let button = UIButton()
        button.setImage(.leftArrow, for: .normal)
        
        return button
    }()
    
    private let dropdownButton: UIButton = {
        let button = UIButton()
        button.setImage(.dropdownIcon, for: .normal)
        
        return button
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .semiboldBody2
        label.textColor = .grayscale90Title
        label.textAlignment = .center
        
        return label
    }()
    
    convenience init(title: String, isBackButton: Bool, isDropdown: Bool = false) {
        self.init()
        self.backgroundColor = .clear
        self.titleLabel.text = title
        
        configureTitleLabel()
        
        if isBackButton {
            configureBackButton()
        }
        
        if isDropdown {
            configureDropDownButton()
        }
    }
    
    private func configureTitleLabel() {
        self.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.leading.trailing.equalToSuperview()
        }
    }
    
    private func configureBackButton() {
        self.addSubview(backButton)
        
        backButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.height.width.equalTo(24)
            make.centerY.equalToSuperview()
        }
    }
    
    private func configureDropDownButton() {
        self.addSubview(dropdownButton)
        
        dropdownButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-16)
            make.height.width.equalTo(24)
            make.centerY.equalToSuperview()
        }
    }
}
