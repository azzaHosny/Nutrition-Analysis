//
//  GetNutritionDataUseCase.swift
//  Nutrition Analysis
//
//  Created by azah on 6/25/21.
//

import RxSwift

protocol GetNutritionDataUseCaseProtocol {
    func build(param: GetNutritionRequestModel, nutritionRepo: NutritionRepo) -> Observable<AddIngredientsUIViewModel>
}

class GetNutritionDataUseCase: GetNutritionDataUseCaseProtocol {
     func build(param: GetNutritionRequestModel, nutritionRepo: NutritionRepo) -> Observable<AddIngredientsUIViewModel> {
        return nutritionRepo.GetNutritionData(param: param).map({
           let nutitionObject = $0
            let viewModel = AddIngredientsUIViewModel(weight: "\(nutitionObject.totalWeight ?? 0 )", ingredient: param.ingr , calories: "\(nutitionObject.calories ?? 0)")
            return viewModel
        })
    }
    
}
