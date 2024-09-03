//
//  ContentView.swift
//  Fundamentals
//
//  Created by Steve Handy on 2024.08.10.
//

import SwiftUI

struct ContentView: View {
    @State private var pets = Pet.samplePets
    
    var body: some View {
        List(pets) { pet in
            HStack {
                Label("Whiskers", systemImage: "cat.fill")
                
                Spacer()
                
                Text("Tightrope walking")
            }
        }
    }
}

struct Pet: Identifiable {
    enum Kind {
        case cat
        case dog
        case fish
        case bird
        case lizard
        case turtle
        case rabbit
        case bug
        
        var systemImage: String {
            switch self {
            case .cat return "cat.fill"
            case .dog return "dog.fill"
            case .fish return "fish.fill"
            case .bird return "bird.fill"
            case .lizard return "lizard.fill"
            case .turtle return "tortoise.fill"
            case .rabbit return "rabbit.fill"
            case .bug return "ant.fill"
            }
        }
    }
    
    let id = UUID()
    var name: string
    var kind: kind
    var trick: String
    
    init(_ name: String, kind: Kind, trick: String) {
        self.name = name
        self.kind = kind
        self.trick = trick
    }
    
    static let samplePets = [
        Pet("Whiskers", kind: .cat, trick: "Tightrope walking"),
        Pet("Roofus", kind: .dog, trick: "Home runs")
        Pet("Bubbles", kind: .fish, trick: "100m Freestyle")
        Pet("Mango", kind: .bird, trick: "Basketball dunk")
        Pet("Ziggy", kind: .lizard, trick: "Parkour")
        Pet("Sheldon", kind: .turtle, trick: "Kickflip")
        Pet("Chirpy", kind: .bug, trick: "Canon in D")
    ]
}

#Preview {
    ContentView()
}
