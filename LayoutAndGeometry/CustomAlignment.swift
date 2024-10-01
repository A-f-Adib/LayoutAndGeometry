//
//  CustomAlignment.swift
//  LayoutAndGeometry
//
//  Created by A.F. Adib on 2/10/24.
//

import SwiftUI

struct CustomAlignment: View {
    var body: some View {
        HStack {
            VStack {
                Text("@TwoStarws")
                
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            
            VStack{
                Text("Full Name:")
                Text("Paul Hadson")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    CustomAlignment()
}
