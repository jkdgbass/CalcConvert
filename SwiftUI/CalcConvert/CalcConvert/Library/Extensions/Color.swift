//
//  Color.swift
//  CalcConvert
//
//  Created by 김도형 on 2022/06/27.
//

import Foundation
import SwiftUI

extension Color {
    static let red500 = Color("red500")
    static let pink500 = Color("pink500")
    static let pink800 = Color("pink800")
    static let purple200 = Color("purple200")
    static let purple500 = Color("purple500")
    static let purple600 = Color("purple600")
    static let purple800 = Color("purple800")
    static let gray100 = Color("gray100")
    static let gray200 = Color("gray200")
    static let gray300 = Color("gray300")
    static let gray400 = Color("gray400")
    static let gray500 = Color("gray500")
    static let gray600 = Color("gray600")
    static let gray700 = Color("gray700")
    static let gray800 = Color("gray800")
    static let gray900 = Color("gray900")
    
    static var bg: Color = isDark ? .gray100 : .gray300
    static var bgContents: Color = isDark ? .gray400 : .white
    static var bgElevated: Color = isDark ? .gray400 : .white
    static var bgElevated02: Color = isDark ? .gray400 : .white
    static var bgElevated03: Color = purple600
    static var bgModal: Color = isDark ? .gray400 : .white
    static var bgListHover: Color = isDark ? .gray500 : .gray400
    static var bgForm: Color = isDark ? .gray300 : .white
    static var bgModalForm: Color = gray300
    static var btnPrimary: Color = pink500
    static var btnSecondary: Color = purple500
    static var btnDefault: Color = isDark ? .gray600 : .gray500
    static var btnFab: Color = .pink500
    static var btnDisable: Color = isDark ? .gray200 : .gray400
    static var btnCkOff: Color = isDark ? .gray500 : .gray400
    static var bgFormDisable: Color = isDark ? .gray200 : .gray400
    static var btnCalculator01: Color = isDark ? .gray500 : .gray300
    static var btnCalculator02: Color = isDark ? .gray600 : .gray500
    static var bgCalendarDay: Color = isDark ? .purple800 : .purple200
    static var bgCalendarDday: Color = purple500
    static var bgCalendarPeriod: Color = pink500
    static var divider: Color = isDark ? .gray500 : .gray400
    static var bgDim: Color = Color.black.opacity(0.5)
    
    static var shadow: [Color] = isDark ? [.clear, .clear, .bgModal] : [.bgElevated, bgElevated02, bgModal]
    
    static var isDark: Bool {
        return UtilManager.shared.isDarkMode
    }
}

