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
        case gray
        case light
    }
    
    private var colorMode: Color = .dark
    
    override var isEnabled: Bool {
        didSet {
            if isEnabled == false {
                self.backgroundColor = .grayscale40Disabled
                self.setTitleColor(.grayscale5ButtonText, for: .disabled)
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
                    self.setTitleColor(.primary40Echog, for: .highlighted)
                case .gray:
                    self.backgroundColor = .grayscale60
                    self.setTitleColor(.primary40Echog, for: .highlighted)
                case .light:
                    self.backgroundColor = .primary80Pressed
                    self.setTitleColor(.primary10, for: .highlighted)
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
            self.setTitleColor(.grayscale5ButtonText, for: .normal)
        case .gray:
            self.backgroundColor = .grayscale10Stroke
            self.setTitleColor(.grayscale80ButtonText2, for: .normal)
        case .light:
            self.backgroundColor = .primary40Echog
            self.setTitleColor(.grayscale80ButtonText2, for: .normal)
        }
    }
}
