//
//  Const.swift
//  CalcConvert
//
//  Created by 김도형 on 2022/06/28.
//

import Foundation

enum GroupType {
case convert, calculate
    
    var name: String {
        switch self {
        case .convert:
            return "변환기"
        case .calculate:
            return "계산기"
        }
    }
    
    var menus: [MenuType] {
        switch self {
        case .convert:
            return [.unit, .time, .exchange]
        case .calculate:
            return [.date, .lunar, .percent, .vat, .ovulation, .tip, .grade, .fuelMileage, .fuel]
        }
    }
}


enum MenuType {
case unit, time, exchange, date, lunar, percent, vat, ovulation, tip, grade, fuelMileage, fuel
    
    var iconName: String {
        switch self {
        case .unit:
            return "단위변환"
        case .time:
            return "시간변환"
        case .exchange:
            return "환율변환"
        case .date:
            return "날짜계산"
        case .lunar:
            return "음력계산"
        case .percent:
            return "퍼센트계산"
        case .vat:
            return "부가세계산"
        case .ovulation:
            return "배란일계산"
        case .tip:
            return "팁계산"
        case .grade:
            return "학점계산"
        case .fuelMileage:
            return "자동차연비 계산"
        case .fuel:
            return "자동차유류비 계산"
        }
    }
    
    var imageName: String {
        switch self {
        case .unit:
            return "ico_unit"
        case .time:
            return "ico_time"
        case .exchange:
            return "ico_exchange"
        case .date:
            return "ico_date"
        case .lunar:
            return "ico_lunar"
        case .percent:
            return "ico_percent"
        case .vat:
            return "ico_vat"
        case .ovulation:
            return "ico_ovulation"
        case .tip:
            return "ico_tip"
        case .grade:
            return "ico_grade"
        case .fuelMileage:
            return "ico_fuelMileage"
        case .fuel:
            return "ico_fuel"
        }
    }
}
