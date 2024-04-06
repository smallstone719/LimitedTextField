//
//  ContentView.swift
//  LimitedTextField
//
//  Created by Thach Nguyen Trong on 4/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                LimitedTextField(
                    config: .init(
                        limit: 40,
                        tint: .secondary,
                        autoResizes: true
                    ),
                    hint: "Type here",
                    value: $text
                )
                .frame(maxHeight: 150)
            }
            .padding()
            .navigationTitle("Limited TextField")
        }
    }
}

#Preview {
    ContentView()
}
