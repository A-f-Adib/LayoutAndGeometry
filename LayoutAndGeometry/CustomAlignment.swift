//
//  CustomAlignment.swift
//  LayoutAndGeometry
//
//  Created by A.F. Adib on 2/10/24.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAccountAndName : AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct CustomAlignment: View {
    var body: some View {
        
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@TwoStarws")
                    .alignmentGuide(.midAccountAndName) { d in
                        d[VerticalAlignment.center]
                    }
                
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            
            VStack{
                Text("Full Name:")
                Text("Paul Hadson")
                    .alignmentGuide(.midAccountAndName) { d in
                        d[VerticalAlignment.center]
                    }
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    CustomAlignment()
}
