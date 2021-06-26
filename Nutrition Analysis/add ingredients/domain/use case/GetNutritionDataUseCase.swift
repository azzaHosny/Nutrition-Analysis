//
//  GetNutritionDataUseCase.swift
//  Nutrition Analysis
//
//  Created by SmartPan on 6/25/21.
//

import RxSwift
class GetNutritionDataUseCase{
    static func build(param: GetNutritionRequestModel) -> Observable<AddIngredientsUIViewModel> {
        return NutritionRepoImpl.GetNutritionData(param: param).map({
           let nutitionObject = $0
            let viewModel = AddIngredientsUIViewModel(weight: "\(nutitionObject.totalWeight)", Quantity: "", Unit: "", Food: "", Calories: "\(nutitionObject.calories)")
            return viewModel
        })
    }
    
}
