//
//  URL+Extensions.swift
//  app-unimarc-ios
//
//  Created by Constanza on 16-12-20.
//

import Foundation

extension URL {
    
    // URL is a value that identifies the location of a resource, such as an item on a remote server or the path to a local file.
    static func forCategoriesByName() -> URL? {
        return URL(string: "http://localhost:3000/v1/bff/categories/3")
    }
}

