//
//  BlogPost.swift
//  
//
//  Created by Christopher Alford on 29/11/21.
//

import Vapor
import Fluent

final class PagePost: Model {
    static let schema = "pageposts"
    
    @ID
    var id: UUID?
    
    @Field(key: "post_date")
    var postDate: Date
    
    @Field(key: "title")
    var title: String
    
    @Field(key: "sub_title")
    var subTitle: String
    
    @Field(key: "body")
    var body: String
    
    init(){}
    
    init(id: UUID? = nil, postDate: Date?, title: String, subTitle: String, body: String) {
        self.id = id
        self.postDate = postDate ?? Date()
        self.title = title
        self.subTitle = subTitle
        self.body = body
    }
}

extension PagePost: Content {}
