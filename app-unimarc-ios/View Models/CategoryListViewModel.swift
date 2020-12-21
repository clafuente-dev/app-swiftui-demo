//
//  CategoryListViewModel.swift
//  app-unimarc-ios
//
//  Created by Constanza on 16-12-20.
//

import Foundation
import SwiftUI

class CategoryListViewModel: ObservableObject {
    
   @Published var categories: [CategoryViewModel] = []
    
    let httpClient = HTTPClient()
    
    func getByName(_ name: String) {
        
        HTTPClient().fetchCategories(completion: { result in
            switch result {
            case .success(let categories):
                DispatchQueue.main.async {
                    self.categories = categories.map(CategoryViewModel.init)
                }
                
                    
                case .failure(let error):
                    print(error.localizedDescription)
            }
        })
    }
}

// this will provide data to the View so it can display the categories
struct CategoryViewModel { // The data that needs to be viewed I expose here only the data that I want to view
    
    let category: Category
    
    var id: Int {
        category.id
    }
    
    var name: String {
        category.name
    }
    
    var children: [Category] {
        category.children
    }
}
