//
//  PowerView.swift
//  Landmarks
//
//  Created by HarmanMBP on 2022/3/19.
//

import SwiftUI

struct PowerView: View {
    
    var model: DevicePowerModel
    
    var body: some View {
        
        HStack.init(alignment: .center, content: {
            
            Text(model.type.name())
                .font(.caption)
                .foregroundColor(.black)
            
            Spacer()
            
            Text("\(Int(model.value))" + "%")
                .font(.caption)
                .foregroundColor(.black)
        })
            .fixedSize()
    }
}

struct PowerView_Previews: PreviewProvider {
    static var previews: some View {
        PowerView(model: .left)
            .previewLayout(.fixed(width: 160, height: 20))
        
    }
}


struct PowerLevelShape: View {
    var value: Float
    
    var body: some View {
        
        GeometryReader { geometry in
            let frame = geometry.frame(in: .local)
            let boxWidth = frame.width / 2
            
            Capsule()
                .fill(Color.powerBgColor)
                .frame(width: frame.width, height: frame.height, alignment: .leading)
            
            Capsule()
                .fill(Color.mediumPowerColor)
                .frame(width: boxWidth, height: frame.height, alignment: .leading)
            
            
            
        }
    }
}

struct PowerLevelShape_Previews: PreviewProvider {
    static var previews: some View {
        PowerLevelShape.init(value: 0.5)
            .previewLayout(.fixed(width: 160, height: 20))
    }
}
