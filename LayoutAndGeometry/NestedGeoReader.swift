//
//  CustomGeoReader2.swift
//  LayoutAndGeometry
//
//  Created by A.F. Adib on 4/10/24.
//

import SwiftUI

struct NestedGeoReader: View {
    
    let colors : [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    
    var body: some View {
        GeometryReader { fullView in
            ScrollView {
                ForEach(0..<100) { index in
                    GeometryReader { proxy in
                            Text("Row : \(index)")
                            .font(.title)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(colors[index % 7])
                            .rotation3DEffect(
                                .degrees(proxy.frame(in: .global).minY - fullView.size.height / 2) / 5,
                                 axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
                            )
                    }
                    .frame(height : 40)
                }
            }
        }
    }
}

#Preview {
    NestedGeoReader()
}
