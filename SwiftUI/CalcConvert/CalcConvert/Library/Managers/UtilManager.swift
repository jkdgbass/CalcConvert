//
//  UtilManager.swift
//  CalcConvert
//
//  Created by 김도형 on 2022/06/27.
//

import Foundation
import SwiftUI

class UtilManager: NSObject {
    static let shared = UtilManager()
    
    var isDarkMode: Bool {
        if UITraitCollection.current.userInterfaceStyle == .dark {
            return true
        }else{
            return false
        }
    }
    
    var appVersion: String {
        guard let dic = Bundle.main.infoDictionary,
        let version = dic["CFBundleShortVersionString"] as? String else {
            return ""
        }
        
        return version
    }
}
