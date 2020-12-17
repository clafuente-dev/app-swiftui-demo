//
//  CategoryListScreen.swift
//  app-unimarc-ios
//
//  Created by Constanza on 16-12-20.
//

import SwiftUI

struct CategoryListScreen: View {
    
    @ObservedObject private var categoryListVM: CategoryListViewModel
    
    init() {
        self.categoryListVM = CategoryListViewModel()
        self.categoryListVM.getByName("")
    }
    
    var body: some View {
        VStack {
            CategoryListView(categories: self.categoryListVM.categories)
                .padding([.top, .bottom]) 
            Spacer()
        }
        .embedNavigationView()
        .navigationBarTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
    }
}
