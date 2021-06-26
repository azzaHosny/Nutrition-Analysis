//
//  IngredientListViewModel.swift
//  Nutrition Analysis
//
//  Created by SmartPan on 6/26/21.
//

import Foundation

class IngredientListViewModel {
    let ingredientsData: [AddIngredientsUIViewModel]
    var cordinator: IngredientListCordinator
    
    init(cordinator: IngredientListCordinator, datasource: [AddIngredientsUIViewModel]) {
        self.ingredientsData = datasource
        self.cordinator = cordinator
    }
    
}
