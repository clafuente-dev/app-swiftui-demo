//
//  SecondCategoryScreen.swift
//  app-unimarc-ios
//
//  Created by Constanza on 16-12-20.
//

import SwiftUI

struct SecondCategoryScreen: View {
    
    init(categories: [CategoryViewModel]) {
        self.categories = categories
    }
    
    init(categories: [Category]) {
        self.categories = categories.map { category -> CategoryViewModel in
            CategoryViewModel(category: category)
        }
    }
    
    
    let categories: [CategoryViewModel]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categories, id: \.id) { category in
                        NavigationLink(destination: SecondCategoryScreen(categories: category.children)) {
                            Text(category.name)
                                .padding(10)
                                .background(Color.red)
                                .cornerRadius(45/2)
                                .foregroundColor(.white)
                        }
                    }
                    .frame(height: 45)
                }
            }
            Spacer()
        }
        .padding([.top, .bottom])
    }
}


