//
//  ContentView.swift
//  MacOSApp
//
//  Created by Sarah Clark on 11/9/23.
//

import SwiftUI

struct MainView: View {
    @State private var searchText = ""

    private let menuItems: [MenuItem] = [
        MenuItem(title: "Discover", systemImage: "star") {
            print("Discover")
        },
        MenuItem(title: "Arcade", systemImage: "arcade.stick") {
            print("Arcade")
        },
        MenuItem(title: "Create", systemImage: "paintbrush") {
            print("Create")
        },
        MenuItem(title: "Work", systemImage: "location") {
            print("Work")
        },
        MenuItem(title: "Play", systemImage: "gamecontroller") {
            print("Play")
        },
        MenuItem(title: "Develop", systemImage: "hammer") {
            print("Develop")
        },
        MenuItem(title: "Categories", systemImage: "squareshape.split.2x2") {
            print("Categories")
        },
        MenuItem(title: "Updates", systemImage: "square.and.arrow.down") {
            print("Updates")
        }
    ]

    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 200))
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(menuItems, id:\.title) { menuItem in
                    menuItem
                }
            }
            .searchable(text: $searchText)
            .onSubmit (of: .search) {
                print(searchText)
            }
            ScrollView {
                Image("banner")
                    .resizable()
                    .padding(.horizontal)
                    .scaledToFit()

                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    ForEach(0..<20) { index in
                        VStack(alignment: .leading) {
                            Image("octocat")
                            Label("Title", systemImage: "")
                                .font(.system(size: 36))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MainView()
}
