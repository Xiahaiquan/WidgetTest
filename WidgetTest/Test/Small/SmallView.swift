//
//  SmallView.swift
//  JBLHeadphonesWidgetExtension
//
//  Created by harman on 2022/3/24.
//  Copyright © 2022 HARMAN International. All rights reserved.
//

import SwiftUI
import WidgetKit

struct SmallView: View {
    
    
    var model: DeviceModel
    
    var body: some View {
        
        ZStack(alignment: .top) {
            VStack.init(alignment: .leading, spacing: 8, content: {
                
                
                DeviceIconView(icons:  model.icons)
                
                Text(model.name)
                    .font(.footnote)
                    .foregroundColor(.black)
                
                DevicePowerView(model: model.powers)
                
            })
        }
        
    }
}


struct DeviceIconView: View {
    
    var icons: [String]
    
    var body: some View {
        HStack.init(alignment: VerticalAlignment.center, spacing: 2) {
            
            if let image = icons.first {
                
                Image(image)
                    .resizable()
                    .frame(width: 43, height: 53, alignment: .leading)
                    .rotationEffect(.degrees(-12))
            }
            
            if let image = icons.last {
                Image(image)
                    .resizable()
                    .frame(width: 43, height: 53, alignment: .leading)
                    .rotationEffect(.degrees(2.9))
            }
            
        }
        
    }
}


struct DevicePowerView: View {
    
    var model: [DevicePowerModel]
    
    var body: some View {
        HStack.init(alignment: .center, spacing: 2, content: {
            
            Group {
                
                PowerLevelShape.init(value: model[0].value)
                    .frame(width: 50, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                PowerLevelShape.init(value: model[1].value)
                    .frame(width: 50, height: 8, alignment: .center)
                
                PowerLevelShape.init(value: model[2].value)
                    .frame(width: 50, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            
        })
        
        
        HStack.init(alignment: .center, spacing: 2, content: {
            
            Group {
                
                PowerView(model: model[0])
                    .frame(width: 50, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                PowerView(model: model[1])
                    .frame(width: 50, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                PowerView(model: model[2])
                    .frame(width: 50, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            
            
        })
    }
}


struct SmallView_Previews: PreviewProvider {
    static var previews: some View {
        SmallView(model: .live)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
