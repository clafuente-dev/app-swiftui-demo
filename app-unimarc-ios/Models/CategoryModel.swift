//
//  CategoryModel.swift
//  app-unimarc-ios
//
//  Created by Constanza on 16-12-20.
//

import Foundation

struct PayloadContent: Decodable {
    let message: String
    let info: [Category]
}

struct CategoryPayload: Decodable {
    let payload: PayloadContent
}

struct Category: Decodable {
    let id: Int
    let name: String
    let hasChildren: Bool
    let url: String
    let children: [Category]
    let title: String
    let metaTagDescription: String
    
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
