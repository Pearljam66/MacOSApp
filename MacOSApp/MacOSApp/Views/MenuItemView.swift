//
//  MenuItem.swift
//  MacOSApp
//
//  Created by Sarah Clark on 11/10/23.
//

import SwiftUI

struct MenuItemView: View {
    let title: String
    let systemImage: String
    let action: () -> Void

    var body: some View {
        Label(title, systemImage: systemImage)
            .onTapGesture(perform: action)
    }
}

#Preview {
    MenuItemView(title: "Test Title", systemImage: "figure.walk", action: {})
}
