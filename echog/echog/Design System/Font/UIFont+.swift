//
//  UIFont+.swift
//  echog
//
//  Created by minsong kim on 9/18/24.
//

import Foundation

import UIKit

extension UIFont {
    static func changeFont(with name: Font.Name, of size: Font.Size) -> UIFont {
        guard let font = UIFont(name: name.file, size: size.rawValue) else {
            return .systemFont(ofSize: size.rawValue)
        }
        return font
    }
}

extension UIFont {
    static var specialTitle: UIFont {
        return UIFontMetrics.customFont(with: .sbAggroMedium, of: ._60, for: .largeTitle)
    }
    
    static var head1: UIFont {
        return UIFontMetrics.customFont(with: .sbAggroMedium, of: ._20, for: .headline)
    }
    
    static var semiboldBody1: UIFont {
        return UIFontMetrics.customFont(with: .pretendardSemiBold, of: ._18, for: .title1)
    }
    
    static var mediumBody1: UIFont {
        return UIFontMetrics.customFont(with: .pretendardMedium, of: ._18, for: .title1)
    }
    
    static var semiboldBody2: UIFont {
        return UIFontMetrics.customFont(with: .pretendardSemiBold, of: ._16, for: .title2)
    }
    
    static var mediumBody2: UIFont {
        return UIFontMetrics.customFont(with: .pretendardMedium, of: ._16, for: .title2)
    }
    
    static var mediumCaption1: UIFont {
        return UIFontMetrics.customFont(with: .pretendardMedium, of: ._14, for: .caption1)
    }
    
    static var regularCaption1: UIFont {
        return UIFontMetrics.customFont(with: .pretendardRegular, of: ._14, for: .caption1)
    }
    
    static var semiboldCaption2: UIFont {
        return UIFontMetrics.customFont(with: .pretendardSemiBold, of: ._12, for: .caption2)
    }
    
    static var mediumCaption2: UIFont {
        return UIFontMetrics.customFont(with: .pretendardMedium, of: ._12, for: .caption2)
    }
}
