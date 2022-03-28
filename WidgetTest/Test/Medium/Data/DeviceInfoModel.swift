//
//  DeviceInfoModel.swift
//  WidgetTest
//
//  Created by harman on 2022/3/28.
//

import SwiftUI

struct DeviceInfoModel {
    let actionName: [(image: String, text: String)]
    let icon: (image: String, text: String)
    let deviceModel: DeviceModel
    
    static let live = DeviceInfoModel.init(actionName: [(image: "Ellipse_50", text: "Ambient Sound"),
                                                        (image: "Group 13991", text: "Noise Cancelling"),
                                                        (image: "Group 13990", text: "Ambient Aware"),
                                                        (image: "Group 13989", text: "TalkTrhu")], icon: (image: "My JBL Headphones", text: "JBL"), deviceModel: DeviceModel.live)
}

