//
//  DeviceInfoModel.swift
//  WidgetTest
//
//  Created by harman on 2022/3/28.
//

import SwiftUI

struct DeviceInfoModel {
    let actions: [Action]
    let icon: (image: String, text: String)
    let deviceModel: DeviceModel
    
    static let live = DeviceInfoModel.init(actions: [Action(image: "Ellipse_50", text: "Ambient Sound", url: "medium:///link0"),
                                                        Action(image: "Group 13991", text: "Noise Cancelling", url: "medium:///link1"),
                                                        Action(image: "Group 13990", text: "Ambient Aware", url: "medium:///link2"),
                                                        Action(image: "Group 13989", text: "TalkTrhu", url: "medium:///link3")],
                                           icon: (image: "My JBL Headphones", text: "JBL"), deviceModel: DeviceModel.live)
}

