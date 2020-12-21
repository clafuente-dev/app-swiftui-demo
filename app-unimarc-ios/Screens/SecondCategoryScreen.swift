//
//  SecondCategoryScreen.swift
//  app-unimarc-ios
//
//  Created by Constanza on 16-12-20.
//

import SwiftUI

struct SecondCategoryScreen: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let categories: [CategoryViewModel]
    
    let title: String
        
    init(title: String, categories: [Category]) {
        self.title = title
        self.categories = categories.map { category -> CategoryViewModel in
            CategoryViewModel(category: category)
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "arrow.left")
                        .padding(.leading)
                    Text(title)
                    Spacer()
                })
                
            }.frame(height: 45) // the container has a height of 45 pts
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
                .padding([.top, .bottom])
            }
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        // Hidden navigation bar to customize it
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}
