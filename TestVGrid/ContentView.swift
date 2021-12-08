//
//  ContentView.swift
//  TestVGrid
//
//  Created by Ilya Melnikov on 08.12.2021.
//

import SwiftUI

struct ContentView: View {

    var columns = [
//        GridItem(.fixed(150))
        GridItem(.adaptive(minimum: 30)),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(0..<50) { index in
                    Rectangle()
                        .frame(height: 50)
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
