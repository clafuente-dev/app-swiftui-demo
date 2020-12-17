//
//  CategoryListScreen.swift
//  app-unimarc-ios
//
//  Created by Constanza on 16-12-20.
//

import SwiftUI

struct CategoryListScreen: View {
    
    @ObservedObject private var categoryListVM: CategoryListViewModel
   // @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    init() {
        self.categoryListVM = CategoryListViewModel()
        self.categoryListVM.getByName("")
    }
    
    var body: some View {
        VStack {
            CategoryListView(categories: self.categoryListVM.categories)
                .padding([.bottom]) 
            Spacer()
                //.navigationBarTitle("App Unimarc")
        }
        .embedNavigationView()
        .navigationBarTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
    }
}

struct CategoryListScreen_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListScreen()
    }
}
