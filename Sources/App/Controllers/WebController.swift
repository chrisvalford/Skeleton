//
//  File.swift
//  
//
//  Created by Christopher Alford on 30/11/21.
//

import Vapor

final class WebController : RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        routes.get("", use: home)
        routes.get("login", use: login)
        routes.get("profile", use: profile)
    }

    func home(req: Request) throws -> EventLoopFuture<View> {
        let context = BaseContext(
            title: "Home",
            description: "Demonstration of the light weight Skeleton framework.")
        return req.render("index", context)
    }

    func login(req: Request) throws -> EventLoopFuture<View> {
//        let member = Member(id: UUID(),fullName: "Jane Doe", eMail: "janedoe@acme.com", joinedDate: nil, lastSeenDate: Date())
        let context = BaseContext(
            title: "Sign in",
            description: "Now, you are signed in as Jane Doe")
        return req.render("login", context)
    }

    func profile(req: Request) throws -> EventLoopFuture<View> {
//        guard let memberId = req.parameters.get("memberID", as: UUID.self ) else {
//            throw Abort(.badRequest)
//        }
        // fake member - usually we would query the database
//        let member = Member(id: UUID(),fullName: "Jane Doe", eMail: "janedoe@acme.com", joinedDate: nil, lastSeenDate: Date())
        let context = BaseContext(
            title: "Member profile",
            description: "Example of dynamically generated URL")
        return req.render("profile", context)
    }

}

