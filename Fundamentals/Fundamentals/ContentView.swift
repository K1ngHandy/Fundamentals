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
            PetRowView(pet: <#T##Pet#>("Buddy", kind: .dog, trick: "Roll over", profileImage: "dogProfile", favoriteColor: .blue))
        }
    }
}

struct PetRowView: View {
    var pet: Pet
    var body: some View {
        HStack {
            profileImage
            
            VStack(alignment: .leading) {
                Text(pet.name)
                Text(pet.trick)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
    }
    
    private var profileImage: some View {
        Image(pet.profileImage)
            .clipShape(Circle())
            .shadow(radius: 3)
            .overlay {
                Circle().stroke(pet.favoriteColor, lineWidth: 2)
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
            case .cat: return "cat.fill"
            case .dog: return "dog.fill"
            case .fish: return "fish.fill"
            case .bird: return "bird.fill"
            case .lizard: return "lizard.fill"
            case .turtle: return "tortoise.fill"
            case .rabbit: return "rabbit.fill"
            case .bug: return "ant.fill"
            }
        }
    }
    
    let id = UUID()
    var name: String
    var kind: Kind
    var trick: String
    var profileImage: String
    var favoriteColor: Color
    
    init(_ name: String, kind: Kind, trick: String, profileImage: String, favoriteColor: Color) {
        self.name = name
        self.kind = kind
        self.trick = trick
        self.profileImage = profileImage
        self.favoriteColor = favoriteColor
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
