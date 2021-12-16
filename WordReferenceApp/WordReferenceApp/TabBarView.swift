//
//  TabBarView.swift
//  WordReferenceApp
//
//  Created by Chiara Gentile on 15/12/21.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
        DictionaryView ()
            .tabItem {Label("Dictionary", systemImage: "globe")}
        FavouritesView ()
            .tabItem {Label("Favourites", systemImage: "star")}
    }.accentColor(.indigo)
}
}

struct TabBarView_Previews: PreviewProvider {
static var previews: some View {
    TabBarView()
}
}
