//
//  ContentView.swift
//  H4X0R News
//
//  Created by Lidiia Diachkovskaia on 8/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts) { post in Text(post.title)
            }
            .navigationTitle("H4X0R NEWS")
        }
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "First Post"),
    Post(id: "2", title: "Second Post"),
    Post(id: "3", title: "Third Post")
]

#Preview {
    ContentView()
}
