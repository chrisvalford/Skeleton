//
//  File.swift
//  
//
//  Created by Christopher Alford on 29/11/21.
//

import Fluent

struct CreatePagePost: Migration {
    
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        
        database.schema("pageposts")
            .id()
            .field("post_date", .date, .required)
            .field("title", .string, .required)
            .field("sub_title", .string, .required)
            .field("body", .string, .required)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void>  {
        database.schema("pageposts").delete()
    }
}
