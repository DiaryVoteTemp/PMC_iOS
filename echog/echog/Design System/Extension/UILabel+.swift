//
//  UILabel+.swift
//  echog
//
//  Created by minsong kim on 9/20/24.
//

import UIKit

extension UILabel {
    func asColor(targetText: String, color: UIColor) {
        let fullText = text ?? ""
        let attributedString = NSMutableAttributedString(string: fullText)
        let range = (fullText as NSString).range(of: targetText)
        attributedString.addAttribute(.foregroundColor, value: color, range: range)
        attributedText = attributedString
    }
}
