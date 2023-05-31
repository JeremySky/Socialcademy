//
//  Post.swift
//  Socialcademy
//
//  Created by Jeremy Manlangit on 5/29/23.
//

import Foundation

struct Post: Identifiable, Equatable, Codable {
    var id = UUID()
    var title: String
    var content: String
    var authorName: String
    var timeStamp = Date()
    
    func contains(_ string: String) -> Bool {
        let properties = [title, content, authorName].map { $0.lowercased() }
        let query = string.lowercased()
        let matches = properties.filter { $0.contains(query) }
        return !matches.isEmpty
    }
}

//MARK: - for testing
extension Post {
    static let testPost = Post(
        title: "Test Title",
        content: "This is a test for the content portion of post.",
        authorName: "Jeremy")
}
