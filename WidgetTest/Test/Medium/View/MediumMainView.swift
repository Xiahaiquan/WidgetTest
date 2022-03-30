//
//  LinkBtnView.swift
//  WidgetTest
//
//  Created by harman on 2022/3/28.
//

import SwiftUI

// -- MARK: IconView
struct IconView: View {
    
    var iconName: (image: String, text: String)
    
    var body: some View {
        HStack.init(alignment: .center, spacing: 8) {
            Image(iconName.image)
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
                .cornerRadius(10)
            
            Text(iconName.text)
                .font(.system(size: 20))
                .foregroundColor(.black)
        }
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView(iconName: (image: "My JBL Headphones", text: "JBL"))
    }
}

// -- MARK: IconView
struct LinkBtnView: View {
    
    var actionName: Action
    
    var body: some View {
        VStack.init(alignment: .center, spacing: 8) {
            Image(actionName.image)
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text(actionName.text)
                .font(.system(size: 10))
                .foregroundColor(.black)
        }
    }
}

struct LinkBtnView_Previews: PreviewProvider {
    static var previews: some View {
        LinkBtnView(actionName: Action(image: "Group 13989", text: "Noise Cancelling", url: ""))
    }
}



// -- MARK: BottomView
struct MediumPowerView: View {
    
    var model: DeviceModel
    
    var body: some View {
        
        HStack {
            
            Text(model.name)
                .font(.system(size: 12))
                .foregroundColor(.black)
            
            Spacer()
            
            VStack {
                
                DevicePowerView.init(model: model.powers)
            }
        }
    }
}

struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        MediumPowerView(model: .live0)
    }
}
