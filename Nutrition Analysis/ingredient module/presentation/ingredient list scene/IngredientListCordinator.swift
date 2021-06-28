//
//  IngredientListCordinator.swift
//  Nutrition Analysis
//
//  Created by azah on 6/26/21.
//

import UIKit

class IngredientListCordinator {
    
    let navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start(ingredinetList: [AddIngredientsUIViewModel]) {
        let viewModel = IngredientListViewModel(cordinator: self, datasource: ingredinetList)
        let viewController = IngredientListViewController.init(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
    
}
