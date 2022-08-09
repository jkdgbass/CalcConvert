//
//  LunarModel.swift
//  CalcConvert
//
//  Created by DoHyoung Kim on 2022/08/09.
//

import Foundation

enum LunarType {
    case lunar, sun
}

struct LunarModel {
    var sourceType: LunarType = .lunar
    var targetType: LunarType = .sun
    var sourceDate: Date = Date()
    var targetDate: Date?
}

class LunarViewModel: ObservableObject {
    
    @Published var data = LunarModel()
    
    private let formatter = DateFormatter()
    
    var sourceName: String {
        if data.sourceType == .lunar {
            return "음력"
        }else{
            return "양력"
        }
    }
    
    var targetName: String {
        if data.targetType == .lunar {
            return "음력"
        }else{
            return "양력"
        }
    }
    
    var sourceDateString: String {
        formatter.dateFormat = "yyyy. MM. dd"
        
        return formatter.string(from: data.sourceDate)
    }
    
    var targetDateString: String {
        formatter.dateFormat = "yyyy. MM. dd"
        
        if let targetDate = data.targetDate {
            return formatter.string(from: targetDate)
        }else{
            return ""
        }
    }
    
    
    func toggle() {
        let source = data.sourceType
        
        data.sourceType = data.targetType
        data.targetType = source
        
        data.sourceDate = Date()
        data.targetDate = nil
    }
}
