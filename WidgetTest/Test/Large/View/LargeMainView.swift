//
//  LargeMainView.swift
//  WidgetTest
//
//  Created by harman on 2022/3/28.
//

import SwiftUI

struct LargeMainView: View {
    
    var model: DeviceLargeModel
    
    var body: some View {
        
        VStack.init(alignment: .leading, content: {
            
            
            
            HStack{
                Link(destination: URL(string: model.action[0].url)!, label: {
                    LinkBtnView(actionName: model.action[0])
                })
                Spacer()
                Link(destination: URL(string: model.action[0].url)!, label: {
                    LinkBtnView(actionName: model.action[1])
                })
                Spacer()
                Link(destination: URL(string: model.action[0].url)!, label: {
                    LinkBtnView(actionName: model.action[2])
                    
                    
                })
                
                Spacer()
                Link(destination: URL(string: model.action[0].url)!, label: {
                    LinkBtnView(actionName: model.action[3])
                    
                    
                })
            }
            
            Spacer()
            HStack{
                Link(destination: URL(string: model.action[0].url)!, label: {
                    LinkBtnView(actionName: model.action[4])
                })
                Spacer()
                Link(destination: URL(string: model.action[0].url)!, label: {
                    LinkBtnView(actionName: model.action[5])
                })
                Spacer()
                Link(destination: URL(string: model.action[0].url)!, label: {
                    LinkBtnView(actionName: model.action[6])
                    
                    
                })
                
                Spacer()
                Link(destination: URL(string: model.action[0].url)!, label: {
                    LinkBtnView(actionName: model.action[7])
                    
                    
                })
            }
            
        })
            .padding()
    }
}

struct LargeMainView_Previews: PreviewProvider {
    static var previews: some View {
        LargeMainView(model: .partyBox)
    }
}
