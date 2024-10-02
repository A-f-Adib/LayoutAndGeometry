//
//  GeometryReader.swift
//  LayoutAndGeometry
//
//  Created by A.F. Adib on 3/10/24.
//

import SwiftUI

struct GeometryREader: View {
    var body: some View {
        HStack{
            Text("Image Name:")
                .frame(width: 200)
                .background(.blue)
            
            GeometryReader { proxy in
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: proxy.size.width * 0.8)
                    .frame(width: proxy.size.width, height: proxy.size.height)
            }
        }
    }
}

#Preview {
    GeometryREader()
}
