//
//  CustomGeoReader.swift
//  LayoutAndGeometry
//
//  Created by A.F. Adib on 3/10/24.
//

import SwiftUI

struct CustomGeoReader: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<20) { indx in
                    
                    GeometryReader { geometry in
                        RoundedRectangle(cornerRadius: 20)
                            .rotation3DEffect(Angle(degrees: 10), axis: (x: 0.0, y: 1.0, z: 0.0))
                    }
                    .frame(width: 300, height: 250)
                    .padding()
                }
            }
        }
    }
}

#Preview {
    CustomGeoReader()
}
