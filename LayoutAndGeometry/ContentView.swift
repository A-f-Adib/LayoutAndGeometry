//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by A.F. Adib on 2/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            Text("Live")
                .font(.caption)
            Text("Longer")
            Text("and")
                .font(.title)
            Text("prospect")
                .font(.largeTitle)
        }
    }
}

#Preview {
    ContentView()
}
