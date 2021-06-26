//
//  NutritionRepo.swift
//  Nutrition Analysis
//
//  Created by SmartPan on 6/25/21.
//

import RxSwift
protocol NutritionRepo {
    static func GetNutritionData(param: GetNutritionRequestModel) -> Observable<GetNutientsResponse>
    
}
