//
//  PowerLevelShape.swift
//  Landmarks
//
//  Created by HarmanMBP on 2022/3/19.
//

import SwiftUI

struct PowerLevelShape: View {
    var level: Double
    
    var body: some View {
        GeometryReader { geometry in
            let frame = geometry.frame(in: .local)
            let boxWidth = frame.width / 4
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: frame.minY))
                path.addLines(
                    [CGPoint(x: 0, y: frame.minY),
                     CGPoint(x: boxWidth, y: frame.minY),
                     CGPoint(x: boxWidth, y: frame.maxY),
                     CGPoint(x: 0, y: frame.maxY)])
            }.fill(level > 0 ? Color.red : Color.gray)
            Path { path in
                path.move(to: CGPoint(x: 0, y: frame.minY))
                path.addLines(
                    [CGPoint(x: boxWidth, y: frame.minY),
                     CGPoint(x: boxWidth * 2 , y: frame.minY),
                     CGPoint(x: boxWidth * 2 , y: frame.maxY),
                     CGPoint(x: boxWidth , y: frame.maxY)])
            }.fill(level > 0.24 ? Color.yellow : Color.gray)
            Path { path in
                path.move(to: CGPoint(x: 0, y: frame.minY))
                path.addLines(
                    [CGPoint(x: boxWidth * 2, y: frame.minY),
                     CGPoint(x: boxWidth * 3, y: frame.minY),
                     CGPoint(x: boxWidth * 3, y: frame.maxY),
                     CGPoint(x: boxWidth * 2, y: frame.maxY)])
            }.fill(level > 0.49 ? Color.yellow : Color.gray)
            Path { path in
                path.move(to: CGPoint(x: 0, y: frame.minY))
                path.addLines(
                    [CGPoint(x: boxWidth * 3, y: frame.minY),
                     CGPoint(x: boxWidth * 4, y: frame.minY),
                     CGPoint(x: boxWidth * 4, y: frame.maxY),
                     CGPoint(x: boxWidth * 3, y: frame.maxY)])
            }.fill(level > 0.74 ? Color.green : Color.gray)
        }
    }
}

struct PowerLevelShape_Previews: PreviewProvider {
    static var previews: some View {
        PowerLevelShape(level: 0.5)
            .previewLayout(.fixed(width: 160, height: 20))
    }
}
