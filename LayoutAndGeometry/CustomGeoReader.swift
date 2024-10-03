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
                        RoundedRectangle(cornerRadius: 20)
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
