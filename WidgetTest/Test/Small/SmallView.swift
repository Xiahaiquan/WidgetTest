//
//  SmallView.swift
//  JBLHeadphonesWidgetExtension
//
//  Created by harman on 2022/3/24.
//  Copyright © 2022 HARMAN International. All rights reserved.
//

import SwiftUI

struct SmallView: View {
    
    var body: some View {
        VStack.init(alignment: .leading, spacing: 2, content: {
            
            Image("LIVE_PRO2_BLACK_RIGHT")
                .resizable()
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                .font(.subheadline)
            
            Text("JBL LIVE PRO 2 TWS")
                .font(.footnote)
                .multilineTextAlignment(.leading)
            
            HStack.init(alignment: .center, spacing: 2, content: {

                Group {
                    
                    PowerLevelShape.init(level: 0.09)
                        .frame(width: 50, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    PowerLevelShape.init(level: 0.5)
                        .frame(width: 50, height: 8, alignment: .center)
                    
                    PowerLevelShape.init(level: 0.9)
                        .frame(width: 50, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
            })
            
            HStack.init(alignment: .center, spacing: 2, content: {
                
                Group {
                    
                    PowerView()
                        .frame(width: 50, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    PowerView()
                        .frame(width: 50, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    PowerView()
                        .frame(width: 50, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                
            })
        })
        
            .padding()
        
        
    }
}

struct SmallView_Previews: PreviewProvider {
    static var previews: some View {
        SmallView()
    }
}
