//
//  File.swift
//  
//
//  Created by Christopher Alford on 30/11/21.
//

import Vapor

struct PageInfo<T>: Encodable where T: Encodable {
    let pageData: T
    let webpageURL: String
    let now: Date
}
