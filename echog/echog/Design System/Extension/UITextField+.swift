//
//  UITextField+.swift
//  echog
//
//  Created by minsong kim on 9/20/24.
//

import UIKit

extension UITextField {
    func addLeftPadding(size: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: size, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
}
