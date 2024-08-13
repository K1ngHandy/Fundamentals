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
                RoundedRectangle(cornerRadius: 14)
                    .stroke(lineWidth: 1.2)
        )
        .foregroundColor(Color.blue)
    }
}

extension View {
    func borderedCaption() -> some View {
        modifier(BorderedCaption())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "bus")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Downtown Bus")
                .borderedCaption()
        }
        .font(.body)
    }
}

#Preview {
    ContentView()
}
