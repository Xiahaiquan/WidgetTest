//
//  DevicePowerModel.swift
//  WidgetTest
//
//  Created by harman on 2022/3/28.
//

import SwiftUI

enum PowerEnum {
    case left
    case right
    case chargeBox
    
    func name() -> String {
        switch self {
        case .left:
            return "L"
        case .right:
            return "R"
        case .chargeBox:
            return ""
        }
    }
    
}

struct DevicePowerModel {
    let type: PowerEnum
    let value: Float
    
    static let left = DevicePowerModel.init(type: .left, value: 20)
    
    static let right = DevicePowerModel.init(type: .right, value: 60)
    
    static let chargeBox = DevicePowerModel.init(type: .chargeBox, value: 90)
    
    
}


struct DeviceModel {
    let icons: [String]
    let name: String
    let powers: [DevicePowerModel]
    
    static let live = DeviceModel.init(icons: ["LIVE_PRO2_BLACK_LEFT", "LIVE_PRO2_BLACK_RIGHT"],
                                       name: "JBL LIVE PRO 2 TWS",
                                       powers: [.left, .right, .chargeBox])
    
    
    static let availableCharacters = [live]
}
