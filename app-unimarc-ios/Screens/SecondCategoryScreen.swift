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
                    print("click")
                }, label: {
                    Image(systemName: "arrow.left")
                        .padding(.leading)
                    Text(title)
                    Spacer()
                })
                
            }.frame(height: 45)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categories, id: \.id) { category in
                        NavigationLink(destination: SecondCategoryScreen(title: category.name, categories: category.children)) {
                            Text(category.name)
                                .padding(10)
                                .background(Color.red)
                                .cornerRadius(45/2)
                                .foregroundColor(.white)
                        }
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                    }
                    .frame(height: 45)
                }
            }
            Spacer()
        }
        .navigationBarTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .padding([.top, .bottom])
    }
}
