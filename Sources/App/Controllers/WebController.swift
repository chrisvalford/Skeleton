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
        routes.get("about", use: about)
        routes.get("contact", use: contact)
        routes.get("register", use: register)
        routes.get("login", use: login)
        routes.get("sbc", use: sbc)
    }

    func home(req: Request) throws -> EventLoopFuture<View> {
        let context = BaseContext(
            title: "Home",
            description: "Demonstration of the light weight Skeleton framework.")
        return req.render("index", context)
    }

    func about(req: Request) throws -> EventLoopFuture<View> {
//        let member = Member(id: UUID(),fullName: "Jane Doe", eMail: "janedoe@acme.com", joinedDate: nil, lastSeenDate: Date())
        let context = BaseContext(
            title: "About Skeleton",
            description: "Skeleton is a light weight css framework.")
        return req.render("about", context)
    }

    func contact(req: Request) throws -> EventLoopFuture<View> {
//        let member = Member(id: UUID(),fullName: "Jane Doe", eMail: "janedoe@acme.com", joinedDate: nil, lastSeenDate: Date())
        let context = BaseContext(
            title: "Contact Skeleton",
            description: "Contact Skeleton - We try to answer questions as soon as we can. Please use a valid e-mail address.")
        return req.render("contact", context)
    }

    func login(req: Request) throws -> EventLoopFuture<View> {
//        let member = Member(id: UUID(),fullName: "Jane Doe", eMail: "janedoe@acme.com", joinedDate: nil, lastSeenDate: Date())
        let context = BaseContext(
            title: "Sign in",
            description: "Now, you are signed in as Jane Doe")
        return req.render("login", context)
    }

    func register(req: Request) throws -> EventLoopFuture<View> {
//        let member = Member(id: UUID(),fullName: "Jane Doe", eMail: "janedoe@acme.com", joinedDate: nil, lastSeenDate: Date())
        let context = BaseContext(
            title: "Register",
            description: "Join Skeleton for extra benefits")
        return req.render("register", context)
    }

    func sbc(req: Request) throws -> EventLoopFuture<View> {
//        guard let memberId = req.parameters.get("memberID", as: UUID.self ) else {
//            throw Abort(.badRequest)
//        }
        // fake member - usually we would query the database
//        let member = Member(id: UUID(),fullName: "Jane Doe", eMail: "janedoe@acme.com", joinedDate: nil, lastSeenDate: Date())
        let context = BaseContext(
            title: "Single Board Computers",
            description: "A variety of todays single board computers")
        return req.render("sbc", context)
    }

}

