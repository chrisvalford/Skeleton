//
//  File.swift
//  
//
//  Created by Christopher Alford on 29/11/21.
//

import Fluent

struct CreateMember: Migration {
    
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        
        database.schema("members")
            .id()
            .field("full_name", .string, .required)
            .field("email", .string, .required)
            .field("joined_date", .date, .required)
            .field("last_seen_date", .date, .required)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void>  {
        database.schema("members").delete()
    }
}
