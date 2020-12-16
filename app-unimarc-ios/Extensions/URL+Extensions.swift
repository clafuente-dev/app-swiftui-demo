//
//  URL+Extensions.swift
//  app-unimarc-ios
//
//  Created by Constanza on 16-12-20.
//

import Foundation

extension URL {
    
    static func forCategoriesByName() -> URL? {
        return URL(string: "http://localhost:3000/v1/bff/categories/3")
    }
}
