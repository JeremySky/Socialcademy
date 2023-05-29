//
//  Post.swift
//  Socialcademy
//
//  Created by Jeremy Manlangit on 5/29/23.
//

import Foundation

struct Post: Identifiable {
    var id = UUID()
    var title: String
    var content: String
    var authorName: String
    var timeStamp = Date()
}

//MARK: - for testing
extension Post {
    static let testPost = Post(
        title: "test title",
        content: "this is a test for the content portion of post",
        authorName: "Jeremy")
}
