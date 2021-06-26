//
//  AddIngredientsConfigurator.swift
//  Nutrition Analysis
//
//  Created by azah on 6/25/21.
//  Copyright (c) azah mahgoub. All rights reserved.
//
//  This file was generated by the Xcode Templates so
//  you can apply clean architecture with MVVMC to your iOS and Mac projects.

import UIKit

class AddIngredientsCordinator {
    weak var viewController: UINavigationController?
   
   init(viewController: UINavigationController) {
       self.viewController = viewController
   }
    func start() {
        let viewModel = AddIngredientsViewModel.init(cordinator: self)
        let vc = AddIngredientsViewController.init(viewModel: viewModel)
        viewController?.pushViewController(vc, animated: true)
    }

    func routToIngredientList(ingredientList: [AddIngredientsUIViewModel]) {
       let ingredientListVC = AppStoryboard.main.getViewController(viewControllerClass: IngredientListViewController.self)
        ingredientListVC.ingredinetList = ingredientList
       viewController?.present(ingredientListVC, animated: true, completion: nil)
   }
}