//
//  ContentView.swift
//  plantdoc
//
//  Created by Diva Ariani on 22/02/24.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)

            FertilizerView()
                .tabItem {
                    Image(systemName: "leaf.fill")
                    Text("Fertilizer")
                }
                .tag(1)

            BookmarkView()
                .tabItem {
                    Image(systemName: "bookmark.fill")
                    Text("Bookmark")
                }
                .tag(2)
        }
        .accentColor(Color(UIColor(hex: "#61AF2B")))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor(hex: "#CCD5AE")).edgesIgnoringSafeArea(.all)

                VStack {
                    Text("Home Screen")
                }
                .navigationTitle("Home")
            }
        }
    }
}

struct FertilizerView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor(hex: "#CCD5AE")).edgesIgnoringSafeArea(.all)

                VStack {
                    Text("Fertilizer Screen")
                }
                .navigationTitle("Fertilizer")
            }
        }
    }
}

struct BookmarkView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor(hex: "#CCD5AE")).edgesIgnoringSafeArea(.all)

                VStack {
                    Text("Bookmark Screen")
                }
                .navigationTitle("Bookmark")
            }
        }
    }
}
