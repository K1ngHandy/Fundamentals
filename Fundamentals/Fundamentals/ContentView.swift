//
//  ContentView.swift
//  Fundamentals
//
//  Created by Steve Handy on 2024.08.10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, Internet!")
                .font(.title)
                .bold()
                .frame(width: 201)
                .border(Color.gray)
                .padding(2)
            Text("Glad to meet you.")
                .underline()
                .padding(2)
            Text("Practicing Swift fundamentals")
        }
        .font(.body)
    }
}

#Preview {
    ContentView()
}
