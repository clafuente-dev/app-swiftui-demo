//
//  CategoryListView.swift
//  app-unimarc-ios
//
//  Created by Constanza on 16-12-20.
//

import SwiftUI

struct CategoryListView: View {
    
    let categories: [CategoryViewModel]
    
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categories, id: \.id) { category in
                        NavigationLink(destination: SecondCategoryScreen(title: category.name, categories: category.children)) {
                            Text(category.name)
                                .padding(10)
                                .background(Color.red) // TODO: change color to custom
                                .cornerRadius(45/2)
                                .foregroundColor(.white) // TODO: change font color to custom
                    }
                }
                .frame(height: 45)
            }
        }
            .navigationBarTitle("")
            .navigationBarHidden(true)
    }
    
}

