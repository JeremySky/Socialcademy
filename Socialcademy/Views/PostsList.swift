//
//  PostsList.swift
//  Socialcademy
//
//  Created by Jeremy Manlangit on 5/29/23.
//

import SwiftUI

struct PostsList: View {
    private var posts = [Post.testPost]
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List(posts) { post in
                PostRow(post: post)
            }
            .searchable(text: $searchText)
            .navigationTitle("Posts")
        }
    }
}

struct PostsList_Previews: PreviewProvider {
    static var previews: some View {
        PostsList()
    }
}
