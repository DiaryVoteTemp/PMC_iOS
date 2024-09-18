//
//  UIFont+.swift
//  echog
//
//  Created by minsong kim on 9/18/24.
//

import Foundation

import UIKit

extension UIFont {
    static func changeFont(with: Font.Name, of: Font.Size) -> UIFont {
        guard let font = UIFont(name: with.file, size: of.rawValue) else {
            return .systemFont(ofSize: of.rawValue)
        }
        return font
    }
}

extension UIFont {
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
