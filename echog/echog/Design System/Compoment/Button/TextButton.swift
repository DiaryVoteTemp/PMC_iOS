//
//  TextButton.swift
//  echog
//
//  Created by minsong kim on 9/19/24.
//

import UIKit

class TextButton: UIButton {
    enum Color {
        case dark
        case light
    }
    
    private var colorMode: Color = .dark

    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                switch colorMode {
                case .dark:
                    self.backgroundColor = .grayscale60
                case .light:
                    self.backgroundColor = .primary10
                }
            } else {
                changeColor(with: colorMode)
            }
        }
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        self.layer.cornerRadius = 10
        self.titleLabel?.font = .semiboldCaption2
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
            self.backgroundColor = .clear
            self.setTitleColor(.grayscale60, for: .normal)
        case .light:
            self.backgroundColor = .clear
            self.setTitleColor(.primary40Echog, for: .normal)
        }
    }
}
