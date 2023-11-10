//
//  ContentView.swift
//  MacOSApp
//
//  Created by Sarah Clark on 11/9/23.
//

import SwiftUI

struct MainView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            List {
                Label("Discover", systemImage: "star")
                    .onTapGesture {
                        print("Discover")
                    }
                Label("Arcade", systemImage: "arcade.stick")
                    .onTapGesture {
                        print("Arcade")
                    }
                Label("Create", systemImage: "paintbrush")
                    .onTapGesture {
                        print("Create")
                    }
                Label("Work", systemImage: "location")
                    .onTapGesture {
                        print("Work")
                    }
                Label("Play", systemImage: "gamecontroller")
                    .onTapGesture {
                        print("Play")
                    }
                Label("Develop", systemImage: "hammer")
                    .onTapGesture {
                        print("Develop")
                    }
                Label("Categories", systemImage: "squareshape.split.2x2")
                    .onTapGesture {
                        print("Categories")
                    }
                Label("Updates", systemImage: "square.and.arrow.down")
                    .onTapGesture {
                        print("Updates")
                    }
            }
            .searchable(text: $searchText)
            .onSubmit (of: .search) {
                print(searchText)
            }
        }
    }
}

#Preview {
    MainView()
}
