//
//  DeviceLargeModel.swift
//  WidgetTest
//
//  Created by harman on 2022/3/28.
//

import SwiftUI

struct Action {
    let image: String
    let text: String
    let url: String
}


struct DeviceLargeModel {
    let icon: String
    let name: String
    let power: Float
    
    let action: [Action]
    

    static let partyBox = DeviceLargeModel.init(icon: "all together_on product render", name: "JBL PartyBox 710", power: 30, action: [Action(image: "Group 14150", text: "Switch", url: "Large:///link0"),
                                                                                                                                          Action(image: "Ellipse 300", text: "Light Show", url: "Large:///link1"),
                                                                                                                                          Action(image: "Group 8438", text: "name1", url: "Large:///link2"),
                                                                                                                                          Action(image: "Group 8442", text: "name2", url: "Large:///link3"),
                                                                                                                                          Action(image: "Group 8439", text: "name3", url: "Large:///link4"),
                                                                                                                                          Action(image: "4", text: "name4", url: "Large:///link5"),
                                                                                                                                          Action(image: "5", text: "name5", url: "Large:///link6"),
                                                                                                                                          Action(image: "Ellipse 300", text: "Free Style", url: "Large:///link7")])
}
