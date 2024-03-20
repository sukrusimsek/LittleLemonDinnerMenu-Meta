//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu-Meta
//
//  Created by Şükrü Şimşek on 20.03.2024.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @EnvironmentObject var viewModel: MenuViewViewModel
    
    var body: some View {
        NavigationStack {
            List {
                Section("Selected categories") {
                    Toggle(MenuCategory.food.rawValue, isOn: $viewModel.isShowFood)
                    Toggle(MenuCategory.drink.rawValue, isOn: $viewModel.isShowDrinks)
                    Toggle(MenuCategory.dessert.rawValue, isOn: $viewModel.isShowDesserts)
                }
                Picker("Sort by", selection: $viewModel.sortBy) {
                    ForEach(SortBy.allCases, id: \.self) { category in
                        Text(category.rawValue).tag(category)
                    }
                }
            }
            .pickerStyle(.inline)
            .listStyle(.grouped)
        }
        .navigationTitle("Filter")
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView().environmentObject(MenuViewViewModel())
    }
}
