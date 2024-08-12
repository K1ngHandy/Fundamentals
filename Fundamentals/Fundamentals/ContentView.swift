//
//  ContentView.swift
//  Fundamentals
//
//  Created by Steve Handy on 2024.08.10.
//

import SwiftUI

struct BorderedCaption: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.caption2)
            .padding(10)
            .overlay(
            RoundedRectangle(cornerRadius: 15)
            .stroke(lineWidth: 1)
        )
            .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "bus")
                .resizable()
                .frame(width: 50, height: 50)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Downtown Bus")
                .font(.title)
                .bold()
                .frame(width: 210)
                .border(Color.blue)
                .padding(2)
            Text("Glad to meet you.")
        }
        .font(.body)
    }
}

#Preview {
    ContentView()
}
