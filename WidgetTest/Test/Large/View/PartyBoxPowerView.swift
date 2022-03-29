//
//  PartyBoxPowerView.swift
//  WidgetTest
//
//  Created by harman on 2022/3/28.
//

import SwiftUI

struct PartyBoxPowerInfoView: View {
    
    var name: String
    var powerValue: Float
    
    var body: some View {
        
        
        VStack.init(alignment: .leading, spacing: 10, content: {
            
            Spacer()
            
            Text(name)
                .foregroundColor(.black)
                .font(.system(size: 20))
            
            HStack.init(alignment: .center, spacing: 0, content: {
                
                Image("Combined Shape")
                    .resizable()
                    .frame(width: 10, height: 20, alignment: .center)
                
                ZStack.init(alignment: .leading, content: {
                    
                    Capsule()
                        .fill(Color.powerBgColor)
                        .frame(width: 100, height: 8, alignment: .center)
                    
                    Capsule()
                        .fill(Color.mediumPowerColor)
                        .frame(width: 50, height: 8, alignment: .leading)
                }).padding(.leading, 10)
                
                
                Text("\(Int(powerValue))" + "%")
                    .font(.system(size: 10))
                    .foregroundColor(.black)
                    .padding(.leading, 10)
                
                Spacer()
            })
            
            
            Spacer()
            
        })
            .padding(.leading, 20)
        
    }
}

struct PartyBoxPowerInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PartyBoxPowerInfoView(name: "JBL PartyBox 710", powerValue: 50)
    
    }
}




