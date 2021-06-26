//
//  GetNutritionDataUseCase.swift
//  Nutrition Analysis
//
//  Created by SmartPan on 6/25/21.
//

import RxSwift

protocol GetNutritionDataUseCaseProtocol {
    func build(param: GetNutritionRequestModel, repo: NutritionRepo) -> Observable<AddIngredientsUIViewModel>
}

class GetNutritionDataUseCase: GetNutritionDataUseCaseProtocol {
     func build(param: GetNutritionRequestModel, repo: NutritionRepo) -> Observable<AddIngredientsUIViewModel> {
        return repo.GetNutritionData(param: param).map({
           let nutitionObject = $0
           let viewModel = AddIngredientsUIViewModel(weight: "\(nutitionObject.totalWeight)", Quantity: "", Unit: "", Food: "", Calories: "\(nutitionObject.calories)")
            return viewModel
        })
    }
    
}
