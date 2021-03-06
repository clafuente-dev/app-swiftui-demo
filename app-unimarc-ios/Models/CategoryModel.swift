//
//  CategoryModel.swift
//  app-unimarc-ios
//
//  Created by Constanza on 16-12-20.
//

import Foundation

// Decodable is a type that can decode itself from an external representation.
struct PayloadContent: Decodable {
    let message: String
    let info: [Category]
}

struct CategoryPayload: Decodable {
    let payload: PayloadContent
}

// A type that can decode itself from an external representation. We're just getting/typifying json that needs to be mapped
struct Category: Decodable {
    let id: Int
    let name: String
    let hasChildren: Bool
    let url: String
    let children: [Category]
    let title: String
    let metaTagDescription: String
    
// A type that can be used as a key for encoding and decoding.
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case hasChildren
        case url
        case children
        case title = "Title"
        case metaTagDescription = "MetaTagDescription"
    }
}
