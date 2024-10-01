//
//  AlignmentGuide.swift
//  LayoutAndGeometry
//
//  Created by A.F. Adib on 2/10/24.
//

import SwiftUI

struct AlignmentGuide: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("this text is in leading")
                .alignmentGuide(.leading) { dimension in
                    dimension[.trailing]
                }
            Text("This text is in trailing")
            
            ForEach(0..<10) { position in
                    Text("Alignment \(position)")
                    .alignmentGuide(.leading) { _ in
                        Double(position) * -10
                    }
            }
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
    }
}

#Preview {
    AlignmentGuide()
}
