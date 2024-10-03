//
//  VisualEffect.swift
//  LayoutAndGeometry
//
//  Created by A.F. Adib on 4/10/24.
//

import SwiftUI

struct VisualEffect: View {
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators:  false) {
            HStack(spacing: 0) {
                ForEach(0..<20) { index in
                        Text("Number \(index)")
                        .font(.largeTitle)
                        .padding()
                        .background(.red)
                        .frame(width: 200, height: 200)
                        .visualEffect { content, proxy in
                            content
                                .rotation3DEffect(.degrees(-proxy.frame(in: .global).midX / 8),
                                                  axis: (x: 0, y: 1, z: 0)
                                )
                        }
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    VisualEffect()
}
