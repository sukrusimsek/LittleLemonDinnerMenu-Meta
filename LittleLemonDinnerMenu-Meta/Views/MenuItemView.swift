//
//  MenuItemView.swift
//  LittleLemonDinnerMenu-Meta
//
//  Created by Şükrü Şimşek on 20.03.2024.
//

import SwiftUI

struct MenuItemView: View {
    
    @EnvironmentObject var viewModel: MenuViewViewModel
    
    init(menuItems: [MenuItem], menuCategory: MenuCategory) {
        self.menuItems = menuItems
        self.menuCategory = menuCategory
    }
    
    var menuItems: [MenuItem]
    
    var menuCategory: MenuCategory
    
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack {
            HStack {
                Text(menuCategory.rawValue)
                    .font(.title)
                    .fontWeight(.medium)
                Spacer()
            }
            LazyVGrid(columns: threeColumnGrid) {
                ForEach((menuItems), id: \.self) { menuItem in
                    NavigationLink(destination: MenuItemDetailsView(menuItem: menuItem)) {
                        VStack {
                            Rectangle()
                            Text(menuItem.title)
                        }
                        .frame(height: 120)
                        .foregroundColor(.black)
                    }
                }
            }
        }
        .padding()
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = MenuViewViewModel()
        MenuItemView(menuItems: viewModel.foods, menuCategory: .food)
    }
}

