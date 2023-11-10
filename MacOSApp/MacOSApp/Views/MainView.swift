//
//  ContentView.swift
//  MacOSApp
//
//  Created by Sarah Clark on 11/9/23.
//

import SwiftUI

struct MainView: View {
    @State private var searchText = ""

    private let menuItems: [MenuItemView] = [
        MenuItemView(title: "Discover", systemImage: "star") {
            print("Discover")
        },
        MenuItemView(title: "Arcade", systemImage: "arcade.stick") {
            print("Arcade")
        },
        MenuItemView(title: "Create", systemImage: "paintbrush") {
            print("Create")
        },
        MenuItemView(title: "Work", systemImage: "location") {
            print("Work")
        },
        MenuItemView(title: "Play", systemImage: "gamecontroller") {
            print("Play")
        },
        MenuItemView(title: "Develop", systemImage: "hammer") {
            print("Develop")
        },
        MenuItemView(title: "Categories", systemImage: "squareshape.split.2x2") {
            print("Categories")
        },
        MenuItemView(title: "Updates", systemImage: "square.and.arrow.down") {
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
