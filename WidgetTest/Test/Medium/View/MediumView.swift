//
//  MediumView.swift
//  JBLHeadphonesWidgetExtension
//
//  Created by harman on 2022/3/25.
//  Copyright © 2022 HARMAN International. All rights reserved.
//

import SwiftUI
import WidgetKit

struct MediumView: View {
    
    var model: DeviceInfoModel
    
    var body: some View {
        
        VStack.init(alignment: .leading, content: {
            
            IconView(iconName: model.icon)
            
            HStack{
                Link(destination: URL(string: "game:///link1")!, label: {
                    LinkBtnView(actionName: model.actionName[0])
                })
                Spacer()
                Link(destination: URL(string: "game:///link2")!, label: {
                    LinkBtnView(actionName: model.actionName[1])
                })
                Spacer()
                Link(destination: URL(string: "game:///link3")!, label: {
                    LinkBtnView(actionName: model.actionName[2])
                    
                    
                })
                
                Spacer()
                Link(destination: URL(string: "game:///link4")!, label: {
                    LinkBtnView(actionName: model.actionName[3])
                    
                    
                })
            }
            
            
            MediumPowerView.init(model: model.deviceModel)
            
            
        })
            .padding()
    }
}

struct MediumView_Previews: PreviewProvider {
    static var previews: some View {
        MediumView(model: .live)
            .previewContext(WidgetPreviewContext(family: .systemMedium))
        
    }
}
