//
//  Member.swift
//
//
//  Created by Christopher Alford on 29/11/21.
//

import Vapor
import Fluent

final class Member: Model {
    static let schema = "members"
    
    @ID
    var id: UUID?
    
    @Field(key: "full_name")
    var fullName: String
    
    @Field(key: "email")
    var eMail: String
    
    @Field(key: "joined_date")
    var joinedDate: Date
    
    @Field(key: "last_seen_date")
    var lastSeenDate: Date
    
    init(){}
    
    init(id: UUID? = nil, fullName: String, eMail: String, joinedDate: Date?, lastSeenDate: Date?) {
        self.id = id
        self.fullName = fullName
        self.eMail = eMail
        self.joinedDate = joinedDate ?? Date()
        self.lastSeenDate = lastSeenDate ?? Date()
    }
}


extension Member: Content {}
