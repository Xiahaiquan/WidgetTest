//
//  PowerView.swift
//  Landmarks
//
//  Created by HarmanMBP on 2022/3/19.
//

import SwiftUI

struct PowerView: View {
    
    var body: some View {
        
        HStack.init(alignment: .center, content: {
            Text("L")
                .font(.caption)
            Spacer()
            Text("100%")
                .font(.caption)
        })
            .fixedSize()
    }
}

struct PowerView_Previews: PreviewProvider {
    static var previews: some View {
        PowerView()
            .previewLayout(.fixed(width: 160, height: 20))
        
    }
}
