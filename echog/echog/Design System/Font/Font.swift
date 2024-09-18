//
//  Font.swift
//  echog
//
//  Created by minsong kim on 9/18/24.
//

import Foundation

enum Font {
    enum Name {
        case sbAggroMedium
        case pretendardSemiBold
        case pretendardRegular
        case pretendardMedium
        
        var file: String {
            switch self {
            case .sbAggroMedium:
                "SB-Aggro-Medium"
            case .pretendardSemiBold:
                "Pretendard-SemiBold"
            case .pretendardRegular:
                "Pretendard-Regular"
            case .pretendardMedium:
                "Pretendard-Medium"
            }
        }
    }
    
    enum Size: CGFloat {
        case _12 = 12
        case _14 = 14
        case _16 = 16
        case _18 = 18
        case _20 = 20
    }
}
