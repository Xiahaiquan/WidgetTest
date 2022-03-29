//
//  LargeView.swift
//  JBLHeadphonesWidgetExtension
//
//  Created by harman on 2022/3/25.
//  Copyright © 2022 HARMAN International. All rights reserved.
//

import SwiftUI
import WidgetKit

struct LargeView: View {
    
    var model: DeviceLargeModel
    
    var body: some View {
        
        VStack.init(alignment: .leading, spacing: 0, content: {
            
            HStack.init(alignment: VerticalAlignment.center, spacing: 0) {
                
                Image(model.icon)
                    .resizable()
                    .frame(width: 80, height: 150, alignment: .center)
                    .background(RoundedRectangle(cornerRadius: 10.0))
                    .foregroundColor(.gray)
                    .padding(.leading, 10)
                
                PartyBoxPowerInfoView.init(name: model.name, powerValue: 50)

                    
            }
            
            
            LargeMainView.init(model: .partyBox)
                .padding()
        })
        
        
        
    }
}

struct LargeView_Previews: PreviewProvider {
    static var previews: some View {
        LargeView(model: .partyBox)
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
