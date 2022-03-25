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
        
        ZStack(alignment: .top) {
            VStack.init(alignment: .leading, spacing: 2, content: {
                
                HStack.init(alignment: VerticalAlignment.center, spacing: 2) {
                    Image("LIVE_PRO2_BLACK_LEFT")
                        .resizable()
                        .frame(width: 43, height: 53, alignment: .leading)
                        .rotationEffect(.degrees(-12))
                    
                    Image("LIVE_PRO2_BLACK_RIGHT")
                        .resizable()
                        .frame(width: 43, height: 53, alignment: .leading)
                        .rotationEffect(.degrees(2.9))
                    
                    
                }
                .padding(.top, 10)
                .padding(.leading,20)
                
                VStack.init(alignment: .leading, spacing: 2) {
                    
                    Text("JBL LIVE PRO 2 TWS")
                        .font(.footnote)
//                        .multilineTextAlignment(.leading)
                    
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
                        .padding()
                    
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
                        .padding(.bottom, 10)
                }
                
            })
        }
        
        
        //
        
        
    }
}

struct SmallView_Previews: PreviewProvider {
    static var previews: some View {
        SmallView()
        //            .previewLayout(.fixed(width: 20, height: 30))
    }
}
