//
//  MainButton.swift
//  echog
//
//  Created by minsong kim on 9/18/24.
//

import UIKit

class MainButton: UIButton {
    enum Color {
        case dark
        case light
    }
    
    private var colorMode: Color = .dark
    
    override var isEnabled: Bool {
        didSet {
            if isEnabled == false {
                self.backgroundColor = .disabled
                self.setTitleColor(.buttonText1, for: .disabled)
            } else {
                changeColor(with: colorMode)
            }
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                switch colorMode {
                case .dark:
                    self.setTitleColor(.echog, for: .highlighted)
                case .light:
                    self.backgroundColor = .pressed
                    self.setTitleColor(.pressedText, for: .highlighted)
                }
            } else {
                changeColor(with: colorMode)
            }
        }
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        self.layer.cornerRadius = 10
        self.titleLabel?.font = .semiboldBody1
    }
    
    convenience init(color: Color, title: String) {
        self.init()
        self.colorMode = color
        self.changeColor(with: color)
        self.setTitle(title, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func changeColor(with color: Color) {
        switch color {
        case .dark:
            self.backgroundColor = .black
            self.setTitleColor(.buttonText1, for: .normal)
        case .light:
            self.backgroundColor = .echog
            self.setTitleColor(.buttonText2, for: .normal)
        }
    }
}
